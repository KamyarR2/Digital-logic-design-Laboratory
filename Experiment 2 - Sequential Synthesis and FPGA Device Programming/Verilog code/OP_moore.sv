
`timescale 1 ns/1ns

module OP_moore(input clkPB , clk , rst , SerIn ,output SerOutValid,SerOut, output[6:0]Output_SSD, output [15:0] bcd);
  wire inc_cnt;
  wire [3:0]Count_out;
  wire clk_EN , Co ,  rst_cnt;
OnePulse   one_pulse(clk,rst , clkPB,  clk_EN);
Moore_machine   moore_machine(clk ,rst , SerIn , clk_EN , Co , inc_cnt , rst_cnt , SerOutValid ,SerOut);
counter10 counter(clk_EN , clk ,rst, inc_cnt , rst_cnt , Count_out , Co );
SSD ssd(Count_out , Output_SSD );
endmodule 
