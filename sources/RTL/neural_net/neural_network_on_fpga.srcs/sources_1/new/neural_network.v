`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 20:21:41
// Design Name: 
// Module Name: neural_network
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


module neural_network(input clk,reset,start,
input [7:0]input_data[0:783], 
output reg [7:0]nn_out[0:9],
output done);
integer i;
reg [9:0]adress;
wire [7:0]weight;
wire [7:0]bias;
wire [7:0]mac_unit_out;
wire [7:0]activation_out;
wire [3:0] state;                
wire [9:0] neuron;               
wire [1:0] layer; 
wire fsm_done;

parameter input_layer=784;
parameter hidden_layer1=28;
parameter hidden_layer2=28;
parameter output_layer=10;

memory m1(.clk(clk),.adress({layer,neuron}),.data(weight));
mac_unit m2(.clk(clk),.input_value((layer==0)?input_data[neuron]:activation_out),.weight(weight),.bias(bias),.reset(reset),.result(mac_unit_out));
activation_relu m3(.data_in(mac_unit_out),.data_out(activation_out));
fsm m4(.clk(clk), .reset(reset),.start(start),.neuron_count((layer==0)?input_layer:(layer==1)?hidden_layer1:(layer==2)?hidden_layer2:output_layer),.layer_count(3),.state(state),.layer(layer),.neuron(neuron),.done(fsm_done));

always@(posedge clk or posedge reset)begin 
if(reset==1)begin 
for (i = 0; i < output_layer; i = i + 1) begin
            nn_out[i] <= 8'd0;
        end
end
else if(layer==3 && state==4'd4)begin 
nn_out[neuron]<=activation_out;
end
end

assign done=fsm_done;

endmodule
