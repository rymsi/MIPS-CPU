`timescale 1ns / 1ps

module PC(
    output [11:0] PC_out,
    input [11:0] PC_in,
    input rst,
    input clk
    );

reg [31:0] pc;

always @ (posedge clk, posedge rst)
begin
    if(rst) begin
        pc = 12'h0;
    end
    else begin
        pc <= PC_in;
    end
end

assign PC_out = pc;

endmodule
