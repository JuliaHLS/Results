using StaticArrays

using FixedPointNumbers
using MLIR
using MLIR.IR
using Test

function IR.Type(T::Core.Type{<:Fixed}; context::IR.Context=context())
    return IR.Type(MLIR.API.mlirIntegerTypeGet(context, sizeof(T) * 8))
end



@inline function cordic_gain(M::Integer)
    K = 1.0
    for i in 0:M-1
        K *= 1 / sqrt(1 + 2.0^(-2*i))
    end
    return K
end


# import Base: *
# @force_inline function Base.:*(x::Fixed{T,Q}, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
#     raw = reinterpret(T, x) * reinterpret(T, y)
#     raw2 = raw >> Q
#     # println("GOT RAW: $raw2")
#     return reinterpret(Fixed{T,Q},raw2)
# end

# @force_inline function Base.:*(x::T, y::Fixed{T,Q})::Fixed{T,Q} where {T<:Integer,Q}
#     raw = (x << Q) * reinterpret(T, y)
#     raw2 = raw >>> Q
#     return reinterpret(Fixed{T,Q},raw2)
# end
function conv2d_im2col(
  A::MMatrix{MA,NA,T},
  K::MMatrix{KH,KW,T}
) where {MA,NA,KH,KW,T}
  OM = MA - KH + 1
  ON = NA - KW + 1

  # im2col dims
  R = KH * KW
  C = OM * ON

  # build the patch matrix
  S = MMatrix{R, C, T}(undef)
  for j in 1:ON, i in 1:OM, v in 1:KW, u in 1:KH
    row = (v-1)*KH + u
    col = (j-1)*OM + i
    @inbounds S[row, col] = A[i+u-1, j+v-1]
  end

  # build the flattened representation
  k = MMatrix{R, 1, T}(undef)
  for v in 1:KW, u in 1:KH
    idx = (v-1)*KH + u
    @inbounds k[idx, 1] = K[u, v]
  end

  # GEMM
  ycol = S' * k   # R×1

  # scatter back into Y
  Y = MMatrix{OM, ON, T}(undef)
  for j in 1:ON, i in 1:OM
    idx = (j-1)*OM + i
    @inbounds Y[i, j] = ycol[idx, 1]
  end

  return Y
end
