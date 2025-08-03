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

    dut->clk= !dut->clk;
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
    dut->in1 = 1;

    dut->go = 1;

    do {
        toggleClock(dut, tfp);
        toggleClock(dut, tfp);
    }while(!dut->done);

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

    std::cout << "Finished execution in: " << std::to_string(main_time / 2) << " cycles" << std::endl;
    

    tfp->close();
    delete tfp;
    delete dut;
    return 0;
}

