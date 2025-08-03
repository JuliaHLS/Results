
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

template<typename DUT, typename InT, typename OutT, typename DataT>
struct ChannelConfig {

ChannelConfig(InT* v, OutT* r, DataT* d)
    : Valid(v), Ready(r), Data(d)
  {
  }

ChannelConfig(InT* v, OutT* r)
    : Valid(v), Ready(r)
  {
  }

  InT* Valid;
  OutT* Ready;
  DataT* Data;
};

template<typename DUT, typename SigT = CData>
class HandshakeChannelInput {
public:
  using Ptr = SigT DUT::*;

  HandshakeChannelInput(DUT* dut, ChannelConfig<DUT,CData, CData, QData> cfg)
    : dut_(dut),
      inValid_(cfg.Valid), inReady_(cfg.Ready)
  {
      hs_state = IDLE;
  }

  void set_valid() {
      hs_state = REQ;
  }

  void reset() {
    hs_state = IDLE;
  }

  [[nodiscard]] bool get_ready() const { return *inReady_; }

  void clock() {
    switch (hs_state)
    {
        case IDLE: {
            break;
        }
        case REQ: {
            hs_state = DONE;
            *inValid_ = 1;
            break;
        }        
        case DONE: {
            hs_state = IDLE;
            *inValid_ = 0;
            break;
        }
        default: {
            std::cout << "Invalid Handshake State detected" << std::endl;
            exit(1);
        }
    }
  }


private:
  DUT* dut_;
  SigT* inValid_;
  SigT* inReady_;

    
  state hs_state;
};


template<typename DUT, typename SigT = CData>
class HandshakeChannelOutput {
public:
  using Ptr = SigT DUT::*;

  HandshakeChannelOutput(DUT* dut, ChannelConfig<DUT,CData, CData, QData> cfg)
    : dut_(dut),
      Valid_(cfg.Valid), Ready_(cfg.Ready)
  {
      hs_state = IDLE;
  }

  void set_ready() {
      hs_state = REQ;
  }

  void reset() {
    hs_state = IDLE;
  }

  [[nodiscard]] bool get_valid() const { return *Valid_; }

  void clock() {
    switch (hs_state)
    {
        case IDLE: {
            break;
        }
        case REQ: {
            hs_state = DONE;
            *Ready_ = 1;
            break;
        }        
        case DONE: {
            hs_state = IDLE;
            *Ready_ = 0;
            break;
        }
        default: {
            std::cout << "Invalid Handshake State detected" << std::endl;
            exit(1);
        }
    }
  }


private:
  DUT* dut_;
  SigT* Valid_;
  SigT* Ready_;

  state hs_state;
};


template<typename DUT>
class InterfaceDriver{
public:
    void clock() {
        if (main_time > MAX_CYCLES) {
            std::runtime_error("Exceeded MAX_CYCLES");
            std::exit(1);
        }

        // clock all interfaces
        for (auto& in_hs: input_hs)
            in_hs.clock();

        for (auto& out_hs: output_hs)
            out_hs.clock();

        for (int i = 0; i < 2; i++){
            dut->clock = !dut->clock;
            dut->eval();
            tfp->dump(main_time++);
            tfp->flush();
        }
    }

    void reset(bool _rst) {
        dut->reset = _rst;

        // for (auto
    }



    void start(std::vector<uint64_t> inputs) {
        for (int i = 0; i < inputs.size(); i++) {
            *data_in_channels.at(i) = inputs[i];
            
        }

        for (auto& hs : input_hs) {
            hs.set_valid();
        }
    }

    InterfaceDriver(DUT* _dut, std::vector<ChannelConfig<DUT, CData, CData, QData>> _in, std::vector<ChannelConfig<DUT, CData, CData, QData>> _out, VerilatedVcdC* _tfp) {
        dut = _dut;
        tfp = _tfp;

        // create new interfaces
        for (const auto& cfg: _in) {
            auto channel = HandshakeChannelInput<DUT>(dut, cfg);
            input_hs.push_back(channel);

            // configure data channels
            data_in_channels.push_back(cfg.Data);
        }

        for (const auto& cfg: _out) {
            auto channel = HandshakeChannelOutput<DUT>(dut, cfg);
            output_hs.push_back(channel);

            // configure data channels
            data_out_channels.push_back(cfg.Data);
        }

    }

    [[nodiscard]] bool result_is_ready() {
        for (const auto& out_hs: output_hs){
            if (!out_hs.get_valid()) return false;
        }

        return true;
    }

    void send_read_output_req() {
        for (auto& out_hs: output_hs){
            out_hs.set_ready();
        }
    }

    [[nodiscard]] std::vector<uint64_t*> read_result() {
        return data_out_channels;
    }

    void set_reset(bool _rst) {
        dut->reset = _rst;
    }

private:
    DUT *dut;  

    std::vector<HandshakeChannelInput<DUT>> input_hs;
    std::vector<HandshakeChannelOutput<DUT>> output_hs;
    std::vector<uint64_t*> data_in_channels;
    std::vector<uint64_t*> data_out_channels;

    VerilatedVcdC* tfp;
};


int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    Vcordic_int* dut = new Vcordic_int();
    VerilatedVcdC* tfp = new VerilatedVcdC;
    dut->trace(tfp, 2000);
    tfp->open("logs/dump.vcd");

    std::cout << "starting service" << std::endl;

    std::vector<ChannelConfig<Vcordic_int, CData, CData, QData>> input_channels = {
        ChannelConfig<Vcordic_int, CData, CData, QData>(
            &dut->in0_valid,
            &dut->in0_ready,
            &dut->in0
        ),
        ChannelConfig<Vcordic_int, CData, CData, QData>(
            &dut->in1_valid,
            &dut->in1_ready,
            &dut->in1
        ),
        ChannelConfig<Vcordic_int, CData, CData, QData>(
            &dut->in2_valid,
            &dut->in2_ready
        ),
    };

    std::vector<ChannelConfig<Vcordic_int, CData, CData, QData>> output_channels = {
        ChannelConfig<Vcordic_int, CData, CData, QData>(
            &dut->out0_valid,
            &dut->out0_ready,
            &dut->out0
        ),
        ChannelConfig<Vcordic_int, CData, CData, QData>(
            &dut->out1_valid,
            &dut->out1_ready
        ),
    };


    std::vector<std::vector<uint64_t>> testcases = {
        {524288, 636751},
        // {0, 0},
        // {1000, 8},
        // {-8, -5},
        // {-3, 5}
    };

    auto driver = InterfaceDriver<Vcordic_int>(dut, input_channels, output_channels, tfp);

    driver.clock();
    driver.reset(1);
    driver.clock();
    driver.reset(0);
    driver.clock();


    for (const auto& test : testcases) {
        driver.start(test);
        auto start_cycles = main_time;

        bool sent_read = false;

        do {
            driver.clock();
            if (!sent_read) {
                driver.send_read_output_req();
                sent_read = true;
            }
        } while (!driver.result_is_ready());

        auto cycles = (main_time - start_cycles) / 2;
        auto result = *driver.read_result()[1];
        std::cout << "Got output " << result << std::endl;
        std::cout << "Completed in " << cycles << " cycles" << std::endl;
    }


    tfp->close();
    delete tfp;
    delete dut;
    return 0;
}

