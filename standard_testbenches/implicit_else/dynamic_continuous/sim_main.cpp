#include <cstdint>
#include <iostream>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vimplicit_else.h"

#include <iomanip>
#include <cstdlib>

#include <bit>
#include <cstdint>

static vluint64_t main_time = 0;

constexpr uint64_t MAX_CYCLES = 10000;

static void toggleClock(Vimplicit_else* dut, VerilatedVcdC* tfp) {
    if (main_time > MAX_CYCLES) {
        std::runtime_error("Exceeded MAX_CYCLES");
        std::exit(1);
    }

    dut->clock= !dut->clock;
    dut->eval();
    tfp->dump(main_time++);
    tfp->flush();
}


int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    Vimplicit_else* dut = new Vimplicit_else();
    VerilatedVcdC* tfp = new VerilatedVcdC;
    dut->trace(tfp, 2000);
    tfp->open("logs/dump.vcd");

    std::cout << "Starting Simulation" << std::endl;

    dut->in0 = 5;
    dut->in0_valid = 1;
    dut->in1 = 1;
    dut->in1_valid = 1;
    dut->in2_valid = 1;

    // dut->go = 1;
    for (int i = 0; i < 100; ) {
        do {
            dut->in0_valid = 0;
            dut->in1_valid = 0;
            dut->in2_valid = 0;
            dut->out0_ready = 0;
            dut->out1_ready = 0;

            if (dut->in0_ready && dut->in1_ready && dut->in2_ready) {
                dut->in0_valid = 1;
                dut->in1_valid = 1;
                dut->in2_valid = 1;
            }

            if (dut->out0_valid && dut->out1_valid) {
                i++;
                dut->out0_ready = 1;
                dut->out1_ready = 1;
            }

            toggleClock(dut, tfp);
            toggleClock(dut, tfp);
        }while(!dut->out0_valid);
    }

    std::cout << "Got " << (int64_t)dut->out0 << std::endl;

    // std::cout << "Exited on 

    // ModuleDriver module = ModuleDriver<1>(dut, tfp);
    // module.cycle();
    // module.reset_module();
    // module.reset_module();
    // module.start_module();

    // // reset the module
    // do {
    //     module.cycle();
    // } while (!module.finished());

    std::cout << "Finished execution in: " << std::to_string(main_time / 200.0) << " cycles" << std::endl;
    

    tfp->close();
    delete tfp;
    delete dut;
    return 0;
}

