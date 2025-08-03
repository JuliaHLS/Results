
#include <iostream>
#include <stdexcept>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vcordic_int.h"

#include <iomanip>
#include <cstdlib>

#include <bit>
#include <cstdint>
#include <bit>

enum state {
      IDLE,
      REQ,
      DONE
};

static vluint64_t main_time = 0;

constexpr uint64_t MAX_CYCLES = 100000;
static void toggleClock(Vcordic_int* dut, VerilatedVcdC* tfp) {
    if (main_time > MAX_CYCLES) {
        std::runtime_error("Exceeded MAX_CYCLES");
        std::exit(1);
    }

    dut->clk= !dut->clk;
    dut->eval();
    tfp->dump(main_time++);
    tfp->flush();
}



class Memory{
public:
    Memory(Vcordic_int *_dut) {
        dut = _dut;
    }
    void clock() {
        switch(hs_s)
        {
            case IDLE:
            {
                if (dut->factors_loadEn) {
                    int addr = dut->factors_loadAddr;
                    hs_s = REQ;
                }
                break;
            }
            case REQ:
            {
                dut->factors_loadData = 5;
                dut->factors_start_valid = 1;

                if (wait_one && dut->factors_start_valid && dut->factors_start_ready) {
                    dut->factors_start_valid = 0;
                    hs_s = DONE;
                }
                wait_one = true;
                break;
            }
            case DONE:
            {
                wait_one = false;
                dut->factors_start_valid = 0;
                hs_s = IDLE;
            }
        }
    }

private:
    Vcordic_int* dut;
    bool wait_one = false;

    state hs_s;
};

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    Vcordic_int* dut = new Vcordic_int();
    VerilatedVcdC* tfp = new VerilatedVcdC;
    dut->trace(tfp, 2000);
    tfp->open("logs/dump.vcd");

    toggleClock(dut, tfp);
    toggleClock(dut, tfp);
    dut->rst = 1;
    toggleClock(dut, tfp);
    toggleClock(dut, tfp);
    toggleClock(dut, tfp);
    toggleClock(dut, tfp);
    dut->rst = 0;

    // dut->end_ready = 1;
    // toggleClock(dut, tfp);
    // toggleClock(dut, tfp);
    // dut->end_ready = 0;
    dut->end_ready = 1;

    bool prev_start = false;
    bool prev_done = false;

    auto mem = Memory(dut);
    for (int i = 0; i < 100; ) {
        // do {
            if (prev_start == true) {
                dut->out0_ready = 0;
                dut->end_ready = 0;
                dut->theta_valid = 0;
                dut->K_valid = 0;
                dut->start_valid = 0;
            //     // prev_start = false;
            }

            // if (dut->start_ready) {
            //     dut->start_valid = 1;
            // }

            if (dut->theta_ready) {
                dut->theta_valid = 1;
            }

            if (dut->K_ready) {
                dut->K_valid = 1;
            }
            
            if (dut->out0_valid) {
                dut->out0_ready = 1;
                dut->end_ready = 1;

                prev_start = true;
                i++;
            }
            mem.clock();
            toggleClock(dut, tfp);
            toggleClock(dut, tfp);
        // } while(!dut->out0_valid);

    }
    

    std::cout << "completed in " << (double) (main_time - 4)/ 2.0 << std::endl;
    tfp->close();
    delete tfp;
    delete dut;
    return 0;
}

