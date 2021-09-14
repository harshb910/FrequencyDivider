// Let the time Scale be:- 10 subunits in 1ns
`timescale 1ns / 100ps
module tb_clock_divider;
// Inputs
reg clk;
// Outputs
wire newclk;
// Our the Unit Under Test (UUT)
Clock_divider uut (
 .clk(clk),
 .newclk(newclk)
);
initial begin
 // Initializing Inputs
 clk = 0;
 //as there is 1 unit of 1ns for 100MHz =>5 units after 5units the value of waveform
toggle making timeperiod 10units = 10ns.
 forever #5 clk = ~clk;
end
endmodule
