`timescale 1ns / 1ps


module CPU(
    input clk,
    input rst
    );
    
    wire [11:0] w[0:99];
    
    PC pc(
        .PC_out(w[0]),
        .PC_in(w[1]),
        .clk(clk)
        );

    Adder adder(
        .in(w[0]),
        .out(w[1])
        );



endmodule
