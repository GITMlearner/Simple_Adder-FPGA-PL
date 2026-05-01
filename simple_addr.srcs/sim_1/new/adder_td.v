`timescale 1ns / 1ps

module adder_tb;

    // Inputs (use reg for testbench inputs)
    reg [3:0] a;
    reg [3:0] b;

    // Output (use wire for testbench outputs)
    wire [4:0] sum;

    // Connect testbench to the adder module
    adder uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    // Test different input values
    initial begin
        // Test 1: 2 + 2 = 4
        a = 4'd2;  b = 4'd2;
        #10;       // wait 10 ns
        $display("Test 1: %d + %d = %d", a, b, sum);

        // Test 2: 5 + 3 = 8
        a = 4'd5;  b = 4'd3;
        #10;
        $display("Test 2: %d + %d = %d", a, b, sum);

        // Test 3: 15 + 15 = 30 (max value)
        a = 4'd15; b = 4'd15;
        #10;
        $display("Test 3: %d + %d = %d", a, b, sum);

        // Test 4: 7 + 8 = 15
        a = 4'd7;  b = 4'd8;
        #10;
        $display("Test 4: %d + %d = %d", a, b, sum);

        // Test 5: 0 + 0 = 0
        a = 4'd0;  b = 4'd0;
        #10;
        $display("Test 5: %d + %d = %d", a, b, sum);

        $finish;   // stop the simulation
    end

endmodule