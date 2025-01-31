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
wire [17:0]mac_out1,mac_out2,mac_out3,mac_out4,mac_out5,mac_out6,mac_out7,mac_out8,mac_out9,mac_out10,mac_out11,mac_out12,mac_out13,mac_out14,mac_out15,mac_out16,mac_out17,mac_out18,mac_out19,mac_out20,mac_out21,mac_out22,mac_out23,mac_out24,mac_out25,mac_out26,mac_out27,mac_out28;

top_one_neuron t1(clk,reset,push_en,mac_en,mem_en,mac_out1,mac_out2,mac_out3,mac_out4,mac_out5,mac_out6,mac_out7,mac_out8,mac_out9,mac_out10,mac_out11,mac_out12,mac_out13,mac_out14,mac_out15,mac_out16,mac_out17,mac_out18,mac_out19,mac_out20,mac_out21,mac_out22,mac_out23,mac_out24,mac_out25,mac_out26,mac_out27,mac_out28);

initial begin
   clk = 0; 
   forever #5 clk = ~clk;
end


initial begin 
reset=1;push_en=0;mac_en=0;mem_en=0;
#5;
reset=0;
push_en=1;mac_en=1;mem_en=1;
#20;
#1000 $finish;
end

endmodule
