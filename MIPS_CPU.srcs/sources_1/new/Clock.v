`timescale 1ns / 1ps

module Clock(
    output clk
    );
    reg clk_reg;
    assign clk = clk_reg;
    
    initial
    begin
    clk_reg = 1;
    end
    
    always
    begin
        #5 clk_reg = !clk_reg;
    end
endmodule
