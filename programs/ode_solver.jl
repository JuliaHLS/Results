using StaticArrays, FixedPointNumbers


using FixedPointNumbers
using MLIR
using MLIR.IR
using Test

function IR.Type(T::Core.Type{<:Fixed}; context::IR.Context=context())
    return IR.Type(MLIR.API.mlirIntegerTypeGet(context, sizeof(T) * 8))
end



"""
    solve(m::Fixed, c::Fixed, k::Fixed, t_start::Fixed, t_end::Fixed, x_start_bc::Fixed, x_end_bc::Fixed, N::Int)

Solves a two-point boundary value problem for a spring-damper system
using the finite difference method. This version manually defines the system matrix
and solves it using the Thomas Algorithm.

The ODE is: m*d²x/dt² + c*dx/dt + k*x = 0

# Arguments
- `m`: Mass of the system as a fixed-point number.
- `c`: Damping coefficient as a fixed-point number.
- `k`: Spring constant as a fixed-point number.
- `t_start`: The start time as a fixed-point number.
- `t_end`: The end time as a fixed-point number.
- `x_start_bc`: The displacement boundary condition at t_start as a fixed-point number.
- `x_end_bc`: The displacement boundary condition at t_end as a fixed-point number.
- `N`: The number of discrete points in the time grid.

# Returns
- `times`: A vector of time points as fixed-point numbers.
- `x_solution`: A vector of displacement values as fixed-point numbers.
- `v_solution`: A vector of velocity values (estimated) as fixed-point numbers.
"""
import Base: *
@force_inline function Base.:*(x::Fixed{T,Q}, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
    raw = reinterpret(T, x) * reinterpret(T, y)
    raw2 = raw >> T(Q)
    return reinterpret(Fixed{T,Q},raw2)
end

@inline function div(x::Fixed{T,Q}, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
    raw::Int = (reinterpret(T, x) << Q) ÷ reinterpret(T, y)
    return reinterpret(Fixed{T,Q},raw)
end

@inline function div(x::Fixed{T,Q}, y::T)::Fixed{T,Q} where {T<:Integer,Q}
    raw::Int = (reinterpret(T, x)) ÷ y
    return reinterpret(Fixed{T,Q},raw)
end

@force_inline function Base.:+(x::Fixed{T,Q}, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
    raw = reinterpret(T, x) + reinterpret(T, y)
    raw2 = raw >> T(Q)
    return reinterpret(Fixed{T,Q},raw2)
end

# @force_inline function Base.:-(x::Fixed{T,Q}, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
#     raw = reinterpret(T, x) - reinterpret(T, y)
#     raw2 = raw >> T(Q)
#     return reinterpret(Fixed{T,Q},raw2)
# end

@force_inline function Base.:*(x::T, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
    raw = (x << Q) * reinterpret(T, y)
    raw2 = raw >>> T(Q)
    return reinterpret(Fixed{T,Q},raw2)
end

function solve(m::Fixed{T,N}, c::Fixed{T,N}, k::Fixed{T,N}, t_start::Fixed{T,N}, t_end::Fixed{T,N}, x_start_bc::Fixed{T,N}, x_end_bc::Fixed{T,N}, ::Val{S}) where {T, N, S}
    h = (t_end - t_start) / (S - 1)
    
    # The number of unknowns is the number of interior points
    num_unknowns = S - 2
    
    # Manually allocate memory as required
    b = MMatrix{num_unknowns,1, Fixed{T,N}}(undef)
    c_prime = MMatrix{num_unknowns,1, Fixed{T,N}}(undef)
    d_prime = MMatrix{num_unknowns,1, Fixed{T,N}}(undef)
    x_interior = MMatrix{num_unknowns,1, Fixed{T,N}}(undef)
    

    for i in 1:num_unknowns
        b[i] = 0
        c_prime[i] = 0
        d_prime[i] = 0
        x_interior[i] = 0
    end

    a_coeff = div(m,h*h) - div(c,2h)
    b_coeff = k - T(2) * div(m,h*h)
    c_coeff = div(m,h*h) + div(c,2h)
    
    # Populate the right-hand side vector b
    for i in 1:num_unknowns
        # Handle the boundary conditions on the right-hand side
        if i == 1 # This is the first unknown, corresponding to x_2
            b[i] -= a_coeff * x_start_bc
        end
        if i == num_unknowns # This is the last unknown, corresponding to x_{N-1}
            b[i] -= c_coeff * x_end_bc
        end
    end
    
    c_prime[1] = div(c_coeff, b_coeff)
    d_prime[1] = div(b[1], b_coeff)
    
    for i in 2:num_unknowns
        # Denominator of the elimination step
        denominator = b_coeff - a_coeff * c_prime[i-1]
        
        # Calculate c_prime for all but the last equation
        if i < num_unknowns
            c_prime[i] = div(c_coeff, denominator)
        end
        
        # Calculate d_prime for all equations
        d_prime[i] = div(b[i] - a_coeff * d_prime[i-1], denominator)
    end

    # Backward substitution phase
    x_interior[end] = d_prime[end]
    
    for i in (num_unknowns-1):-1:1
        x_interior[i] = d_prime[i] - c_prime[i] * x_interior[i+1]
    end

    solution = MMatrix{2 + num_unknowns + N-1, 1, Fixed{T, N}}(undef)    
    
    # Reconstruct the full displacement vector by adding the boundary points
    # x_solution = @MMatrix [x_start_bc; x_interior; x_end_bc]
    solution[1] = x_start_bc
    for i in 1:num_unknowns
        solution[i+1] = x_interior[i]
    end

    # solution[num_unknowns] = x_interior
    solution[num_unknowns+1] = x_end_bc
    
    # Estimate the velocity using central finite differences
    #v_solution = zeros(T, N)
    V_START_IDX = 2 + num_unknowns

    solution[V_START_IDX] = div(solution[2] - solution[1], h) # Forward diff for start
    solution[end] = div(solution[V_START_IDX] - solution[V_START_IDX-1],h)# Backward diff for end
    for i in 2:N-1
        solution[V_START_IDX + i] = div(solution[i+1] - solution[i-1], (Fixed{T,N}(2)*h))
    end

      
    return solution
end



# ----------------------------------------------------------------------
# Example Usage:
# ----------------------------------------------------------------------

# Define the fixed-point type to use (e.g., 16-bit integer with 8 fractional bits)
const FP = Fixed{Int64, 16}

# Define problem parameters as fixed-point numbers
mass = FP(1.0)
damping = FP(2.0)
spring_constant = FP(1.0)
time_start = FP(0.0)
time_end = FP(5.0)
displacement_start = FP(1.0)
displacement_end = FP(0.5)
num_points = 101

# Call the solver function
solve(mass, damping, spring_constant, time_start, time_end, displacement_start, displacement_end, Val(101))

