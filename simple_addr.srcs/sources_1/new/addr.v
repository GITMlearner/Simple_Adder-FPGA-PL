`timescale 1ns / 1ps

module adder(
    input  [3:0] a,      // first number (4-bit)
    input  [3:0] b,      // second number (4-bit)
    output [4:0] sum     // result (5-bit, because 15+15=30)
    );

    assign sum = a + b;

endmodule