#include <verilated.h>
#include <verilated_vcd_c.h>
#include "../obj_dir/Vexample.h"
#include <iostream>

#define MAX_SIM_TIME 20
vluint64_t sim_time = 0;

int main(int argc, char** argv, char** env)
{
    Vexample *dut = new Vexample;

    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform.vcd");
    dut->CLK = 0;
    while (sim_time < MAX_SIM_TIME * 5)
    {
        dut->CLK ^= 1;
        dut->D ^= 1;
        dut->A ^= 1;
        dut->eval();
        m_trace->dump(sim_time);
        sim_time++;
    }

    m_trace->close();
    delete dut;
    exit(EXIT_SUCCESS);
}