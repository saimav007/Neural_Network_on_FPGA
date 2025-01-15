`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 20:39:00
// Design Name: 
// Module Name: fsm
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


module fsm(input clk,reset,start,
 input [9:0]neuron_count,
  input [1:0]layer_count,
  output reg [2:0]state, 
  output reg [1:0]layer, 
  output reg [9:0]neuron, 
  output reg done);
  
localparam IDLE=3'd0, LOAD=3'd1, COMPUTE=3'd2,NEXT_NEURON=3'd3,DONE=3'd4;


always@(posedge clk or posedge reset)begin
if(reset==1)begin 
layer<=0;
neuron<=0;
done<=0;
end
else begin 
case(state)
IDLE: begin 
if(start) state<=LOAD;
end
LOAD: begin 
state<=COMPUTE;
end
COMPUTE: begin 
state<=NEXT_NEURON;
end
NEXT_NEURON: 
begin 
if(layer==0 && neuron<neuron_count)begin 
neuron<=neuron+1;
state<=LOAD;
end
else if(layer==1 && neuron<neuron_count)begin
neuron<=neuron+1;
state<=LOAD;
end
else if(layer==2 && neuron<neuron_count)begin
neuron<=neuron+1;
state<=LOAD;
end
else if(layer==3 && neuron<neuron_count)begin
neuron<=neuron+1;
state<=LOAD;
end
else begin 
neuron<=10'd0;
if(layer<3)begin
layer<=layer+1; 
end
else begin
done<=1;
end
state<=done?DONE:LOAD;
end
end
DONE: state<=IDLE;
default: begin 
state<=IDLE;
end
endcase
end
end
endmodule
