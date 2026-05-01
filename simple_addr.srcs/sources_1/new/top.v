`timescale 1ns / 1ps

module top(
    input clk          // 100 MHz clock from Zedboard (Y9 pin)
    );

    // Wires connected between VIO, adder, and ILA
    wire [3:0] a;      // input a (from VIO)
    wire [3:0] b;      // input b (from VIO)
    wire [4:0] sum;    // output sum (to VIO and ILA)

    // Connect our adder
    adder uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    // VIO core: input a, b from PC; output sum to PC
    vio_0 my_vio (
        .clk(clk),
        .probe_in0(sum),    // 5-bit, sum value to see on PC
        .probe_out0(a),     // 4-bit, set value of a from PC
        .probe_out1(b)      // 4-bit, set value of b from PC
    );

    // ILA core: watch all signals over time
    ila_0 my_ila (
        .clk(clk),
        .probe0(a),         // 4-bit
        .probe1(b),         // 4-bit
        .probe2(sum)        // 5-bit
    );

endmodule