`timescale 1ns / 1ps

module Testbench();

wire clk_w, rst_w;
reg rst_r;

Clock clock(.clk(clk_w));

CPU cpu(
    .clk(clk_w),
    .rst(rst_w)
);


initial
begin
        #0 rst_r = 0;
        #0.5 rst_r = 1;
        #0.5 rst_r = 0;
        #1000 $finish;
end
/*        
        #2 x_r = 0;
        #10 x_r = 1;
        #10 x_r = 1;
        
        #10 x_r = 0;
        #10 x_r = 0;
        #10 x_r = 1;
        #10 x_r = 1;
        
        #10 x_r = 1;
        #10 x_r = 1;
        #10 x_r = 0;
        #10 x_r = 1;
        
        #10 $finish;
end
*/
assign rst_w = rst_r;

endmodule
