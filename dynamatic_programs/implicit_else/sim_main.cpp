
#include <iostream>
#include <stdexcept>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vimplicit_else.h"

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


    dut->arg0_valid=1;
    dut->arg1_valid=1;
    dut->start_valid=1;

    do {
        toggleClock(dut, tfp);
        toggleClock(dut, tfp);
    }while(!dut->out0_valid);

    // dut->end_ready = 1;
    // toggleClock(dut, tfp);
    // toggleClock(dut, tfp);
    // dut->end_ready = 0;

    std::cout << "completed in " << (double) (main_time)/ 2.0 << std::endl;
    tfp->close();
    delete tfp;
    delete dut;
    return 0;
}

