#include <cstdint>
#include <iostream>
#include <verilated.h>
#include "Vtop.h"

#include <iomanip>
#include <cstdlib>

#include <bit>
#include <cstdint>

static vluint64_t main_time = 0;

// constexpr uint64_t MAX_CYCLES = 1000000;

static void toggleClock(Vtop* dut) {
    // if (main_time > MAX_CYCLES) {
    //     std::runtime_error("Exceeded MAX_CYCLES");
    //     std::exit(1);
    // }

    dut->clk= !dut->clk;
    dut->eval();
    // tfp->dump(main_time++);
    // tfp->flush();
}


template<int DELAY>
class MemoryInterfaceWriteMem0{
public:

    MemoryInterfaceWriteMem0(Vtop* _dut) {
        dut = _dut;
        state = AXI_state::IDLE;
    }

    void set_reset(bool _rst) {
        state = AXI_state::IDLE;
    }

    void read_logic() {
        switch(state) 
        {
            case IDLE: 
            {
                // assert signal
                dut->m_axis_mem0_req_tready = 1;
                delay_ctr = 0;

                if (state == AXI_state::IDLE && dut->m_axis_mem0_req_tvalid) {
                    auto msg = dut->m_axis_mem0_req_tdata;
                    std::cout << "Got read req mem0 for addr 0x" << msg << std::endl;
                    // std::cout << "Got MSG: " << msg[2] << ", " << msg[1] << ", " << msg[0] << std::endl;
                    // auto top2 = static_cast<uint64_t>(msg[2]); 

                    // uint64_t low64 = (static_cast<uint64_t>(msg[1]) << 32)
                                   // |  static_cast<uint64_t>(msg[0]);

                    req = std::make_unique<write_req>(0, msg);

                    // state transition
                    state = AXI_state::WRITING;
                }

                break;
            }
            case WRITING:
            {

                std::cout << "READING state" << std::endl;
                if(delay_ctr++ == DELAY) {
                    std::cout << "Reading 0x" << req->addr << ", data: 0x" << req->data << std::endl;
                    auto data = mem[req->addr] = req->data;

                    if (dut->s_axis_mem0_pl_tready) {
                        std::cout << "Fulfilling readreq" << std::endl;
                        state = AXI_state::DONE;
                        dut->m_axis_mem0_req_tvalid = 1;
                        // dut->m_axis_mem0_req_tlast = 1;

                        dut->s_axis_mem0_pl_tdata = data;
                        dut->s_axis_mem0_pl_tvalid = 1;
                        dut->s_axis_mem0_pl_tlast = 1;
                        dut->m_axis_mem0_req_tvalid = 0;
                    }
                }
                
                break;
            }
            case DONE:
            {

                // dut->m_axis_mem0_req_tlast = 0;
                std::cout << "Sending data back" << std::endl;

                if (!dut->s_axis_mem0_pl_tready) {
                    std::cout << "Passing over AXI stream" << std::endl;
                    state = AXI_state::IDLE;
                    dut->s_axis_mem0_pl_tvalid = 0;
                    dut->s_axis_mem0_pl_tlast = 0;
                }
                
                break;
            }
            default: {
                std::cout << "In unexpected case: " << state << std::endl;
            }
        
        };
    }
private:
    enum AXI_state {
        IDLE,
        WRITING,
        DONE,
    };


    struct write_req {
        uint64_t addr;
        uint64_t data;

        write_req(uint64_t _addr, uint64_t _data) {
            addr = _addr;
            data = _data;
        }
    };

    int delay_ctr;

    AXI_state state;
    std::unique_ptr<write_req> req;


    Vtop *dut;  

    std::array<long, 128> mem;
};






template<int DELAY>
class MemoryInterfaceWriteMem1{
public:

    MemoryInterfaceWriteMem1(Vtop* _dut) {
        dut = _dut;
        state = AXI_state::IDLE;
    }

    void set_reset(bool _rst) {
        state = AXI_state::IDLE;
    }

    void read_logic() {
        switch(state) 
        {
            case IDLE: 
            {
                // assert signal
                dut->m_axis_mem1_req_tready = 1;
                delay_ctr = 0;

                if (state == AXI_state::IDLE && dut->m_axis_mem1_req_tvalid) {
                    auto msg = dut->m_axis_mem1_req_tdata;
                    std::cout << "Got read req mem1 for addr 0x" << msg << std::endl;
                    // std::cout << "Got MSG: " << msg[2] << ", " << msg[1] << ", " << msg[0] << std::endl;
                    // auto top2 = static_cast<uint64_t>(msg[2]); 

                    // uint64_t low64 = (static_cast<uint64_t>(msg[1]) << 32)
                                   // |  static_cast<uint64_t>(msg[0]);

                    req = std::make_unique<write_req>(0, msg);

                    // state transition
                    state = AXI_state::WRITING;
                }

                break;
            }
            case WRITING:
            {

                std::cout << "READING state" << std::endl;
                if(delay_ctr++ == DELAY) {
                    std::cout << "Reading 0x" << req->addr << ", data: 0x" << req->data << std::endl;
                    auto data = mem[req->addr] = req->data;

                    if (dut->s_axis_mem1_pl_tready) {
                        std::cout << "Fulfilling readreq" << std::endl;
                        state = AXI_state::DONE;
                        dut->m_axis_mem1_req_tvalid = 1;
                        // dut->m_axis_mem1_req_tlast = 1;

                        dut->s_axis_mem1_pl_tdata = data;
                        dut->s_axis_mem1_pl_tvalid = 1;
                        dut->s_axis_mem1_pl_tlast = 1;
                    }
                }
                
                break;
            }
            case DONE:
            {

                dut->m_axis_mem1_req_tvalid = 0;
                // dut->m_axis_mem1_req_tlast = 0;
                std::cout << "Sending data back" << std::endl;

                if (!dut->s_axis_mem1_pl_tready) {
                    std::cout << "Passing over AXI stream" << std::endl;
                    state = AXI_state::IDLE;
                    dut->s_axis_mem1_pl_tvalid = 0;
                    dut->s_axis_mem1_pl_tlast = 0;
                }
                
                break;
            }
            default: {
                std::cout << "In unexpected case: " << state << std::endl;
            }
        
        };
    }
private:
    enum AXI_state {
        IDLE,
        WRITING,
        DONE,
    };


    struct write_req {
        uint64_t addr;
        uint64_t data;

        write_req(uint64_t _addr, uint64_t _data) {
            addr = _addr;
            data = _data;
        }
    };

    int delay_ctr;

    AXI_state state;
    std::unique_ptr<write_req> req;


    Vtop *dut;  

    std::array<long, 128> mem;
};



template<int DELAY>
class MemoryInterfaceWrite{
public:

    MemoryInterfaceWrite(Vtop* _dut) {
        dut = _dut;
        state = AXI_state::IDLE;
    }

    void set_reset(bool _rst) {
        state = AXI_state::IDLE;
    }

    void read_logic() {
        switch(state) 
        {
            case IDLE: 
            {
                // assert signal
                dut->m_axis_mem2_req_tready = 1;
                delay_ctr = 0;

                if (state == AXI_state::IDLE && dut->m_axis_mem2_req_tvalid) {
                    auto msg = dut->m_axis_mem2_req_tdata;
                    std::cout << "Got read req mem2 for addr 0x" << msg << std::endl;
                    // std::cout << "Got MSG: " << msg[2] << ", " << msg[1] << ", " << msg[0] << std::endl;
                    // auto top2 = static_cast<uint64_t>(msg[2]); 

                    // uint64_t low64 = (static_cast<uint64_t>(msg[1]) << 32)
                                   // |  static_cast<uint64_t>(msg[0]);

                    req = std::make_unique<write_req>(0, msg);

                    // state transition
                    state = AXI_state::WRITING;
                }

                break;
            }
            case WRITING:
            {
                std::cout << "READING state" << std::endl;

                if(delay_ctr++ == DELAY) {
                    std::cout << "Reading 0x" << req->addr << ", data: 0x" << req->data << std::endl;
                    auto data = mem[req->addr] = req->data;

                    if (dut->s_axis_mem2_pl_tready) {
                        std::cout << "Fulfilling readreq" << std::endl;
                        state = AXI_state::DONE;
                        dut->m_axis_mem2_req_tvalid = 1;
                        // dut->m_axis_mem2_req_tlast = 1;

                        dut->s_axis_mem2_pl_tdata = data;
                        dut->s_axis_mem2_pl_tvalid = 1;
                        dut->s_axis_mem2_pl_tlast = 1;
                    }
                }
                
                break;
            }
            case DONE:
            {

                dut->m_axis_mem2_req_tvalid = 0;
                // dut->m_axis_mem2_req_tlast = 0;
                std::cout << "Sending data back" << std::endl;

                if (!dut->s_axis_mem2_pl_tready) {
                    std::cout << "Passing over AXI stream" << std::endl;
                    state = AXI_state::IDLE;
                    dut->s_axis_mem2_pl_tvalid = 0;
                    dut->s_axis_mem2_pl_tlast = 0;
                }
                
                break;
            }
            default: {
                std::cout << "In unexpected case: " << state << std::endl;
            }
        
        };
    }

    void write_logic() {
        switch(state) 
        {
            case IDLE: 
            {
                // assert signal
                dut->m_axis_mem2_store_tready = 1;
                delay_ctr = 0;

                if (state == AXI_state::IDLE && dut->m_axis_mem2_store_tvalid) {
                    auto msg = dut->m_axis_mem2_store_tdata;
                    std::cout << "Got MSG: " << msg[2] << ", " << msg[1] << ", " << msg[0] << std::endl;
                    auto top2 = static_cast<uint64_t>(msg[2]); 

                    uint64_t low64 = (static_cast<uint64_t>(msg[1]) << 32)
                                   |  static_cast<uint64_t>(msg[0]);

                    req = std::make_unique<write_req>(top2, low64);

                    // state transition
                    state = AXI_state::WRITING;
                }

                break;
            }
            case WRITING:
            {
                std::cout << "WRITING state" << std::endl;

                if(delay_ctr++ == DELAY) {
                    std::cout << "Writing 0x" << req->addr << ", data: 0x" << req->data << std::endl;
                    mem[req->addr] = req->data;
                    state = AXI_state::DONE;
                }
                
                break;
            }
            case DONE:
            {
                dut->m_axis_mem2_store_tready = 1;
                std::cout << "Written data" << std::endl;

                state = AXI_state::IDLE;
                
                break;
            }
            default: {
                std::cout << "In unexpected case: " << state << std::endl;
            }
        
        };
    }

private:
    enum AXI_state {
        IDLE,
        WRITING,
        DONE,
    };


    struct write_req {
        uint64_t addr;
        uint64_t data;

        write_req(uint64_t _addr, uint64_t _data) {
            addr = _addr;
            data = _data;
        }
    };

    int delay_ctr;

    AXI_state state;
    std::unique_ptr<write_req> req;


    Vtop *dut;  

    std::array<long, 128> mem;
};


template<int DELAY>
class ModuleDriver{
public:
    ModuleDriver(Vtop* _dut) {
        dut = _dut;

        out_mem = std::make_unique<MemoryInterfaceWrite<DELAY>>(dut);
        mem1 = std::make_unique<MemoryInterfaceWriteMem1<DELAY>>(dut);
        mem0 = std::make_unique<MemoryInterfaceWriteMem0<DELAY>>(dut);
    }
    
    void set_reset(bool _rst) {
        dut->reset = _rst;
        out_mem->set_reset(_rst);
    }

    void start_module() {
        dut->in3_valid = 1;
        toggleClock(dut);
        toggleClock(dut);
        dut->in3_valid = 0;
        std::cout << "Started Module" << std::endl;
    }

    void set_ready_to_receive() {
        dut->out0_ready = 1;
        dut->out1_ready = 1;
    }


    void reset_module() {
        out_mem->set_reset(1);
        mem1->set_reset(1);
        mem0->set_reset(1);
        dut->reset = 1;
        toggleClock(dut);
        toggleClock(dut);
        dut->reset = 0;
        out_mem->set_reset(0);
        mem1->set_reset(0);
        mem0->set_reset(0);
    }

    void cycle() {
        out_mem->write_logic();
        out_mem->read_logic();
        mem1->read_logic();
        mem0->read_logic();
        toggleClock(dut);
        toggleClock(dut);
    }

    [[nodiscard]] bool finished() {
        return (dut->out0_valid) && (dut->out1_valid);
    }


private:
    Vtop *dut;

    std::unique_ptr<MemoryInterfaceWrite<DELAY>> out_mem;
    std::unique_ptr<MemoryInterfaceWriteMem0<DELAY>> mem0;
    std::unique_ptr<MemoryInterfaceWriteMem1<DELAY>> mem1;
};



int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    Vtop* dut = new Vtop();

    std::cout << "Starting Simulation" << std::endl;

    ModuleDriver module = ModuleDriver<1>(dut);
    module.cycle();
    module.reset_module();
    module.reset_module();
    module.start_module();

    // reset the module
    do {
        module.cycle();
    } while (!module.finished());

    std::cout << "Finished execution in: " << std::to_string(main_time / 2) << " cycles" << std::endl;
    

    delete dut;
    return 0;
}

