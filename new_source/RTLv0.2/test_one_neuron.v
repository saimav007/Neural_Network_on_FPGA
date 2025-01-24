`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 14:57:44
// Design Name: 
// Module Name: test_one_neuron
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_one_neuron();
reg clk,reset,push_en,mac_en,mem_en;
wire [17:0]mac_out;

top_one_neuron m4(clk,reset,push_en,mac_en,mem_en,mac_out);

initial begin
forever #5 clk=~clk;
end

initial begin 
clk=0;reset=1;push_en=0;mac_en=0;mem_en=0;
#5;
reset=0;
push_en=1;mac_en=1;mem_en=1;
#20;
#1000 $finish();
end

endmodule
