`timescale 1ns / 1ps

module Adder(
    input [11:0] in,
    output [11:0] out
    );
reg [11:0] out_reg;

always@(*)
begin

    out_reg = in + 4;

end
assign out = out_reg;
endmodule

















