`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 14:25:36
// Design Name: 
// Module Name: top_one_neuron
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


module top_one_neuron(input clk,reset,push_en,mac_en,mem_en,output [17:0]mac_out1,mac_out2,mac_out3,mac_out4,mac_out5,mac_out6,mac_out7,mac_out8,mac_out9,mac_out10,mac_out11,mac_out12,mac_out13,mac_out14,mac_out15,mac_out16,mac_out17,mac_out18,mac_out19,mac_out20,mac_out21,mac_out22,mac_out23,mac_out24,mac_out25,mac_out26,mac_out27,mac_out28);
wire [7:0]out;
//buffer wires

//rom wires 
wire [15:0]rom_out1;
wire [15:0]rom_out2;
wire [15:0]rom_out3;
wire [15:0]rom_out4;
wire [15:0]rom_out5;
wire [15:0]rom_out6;
wire [15:0]rom_out7;
wire [15:0]rom_out8;
wire [15:0]rom_out9;
wire [15:0]rom_out10;
wire [15:0]rom_out11;
wire [15:0]rom_out12;
wire [15:0]rom_out13;
wire [15:0]rom_out14;
wire [15:0]rom_out15;
wire [15:0]rom_out16;
wire [15:0]rom_out17;
wire [15:0]rom_out18;
wire [15:0]rom_out19;
wire [15:0]rom_out20;
wire [15:0]rom_out21;
wire [15:0]rom_out22;
wire [15:0]rom_out23;
wire [15:0]rom_out24;
wire [15:0]rom_out25;
wire [15:0]rom_out26;
wire [15:0]rom_out27;
wire [15:0]rom_out28;


//instantiating 1 input loader 
input_loader i1(.clk(clk),.reset(reset),.push_en(push_en),.out(out));


//instantiating 28 mac units 
test_mac m1(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out1),.result(mac_out1));
test_mac m2(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out2),.result(mac_out2));
test_mac m3(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out3),.result(mac_out3));
test_mac m4(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out4),.result(mac_out4));
test_mac m5(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out5),.result(mac_out5));
test_mac m6(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out6),.result(mac_out6));
test_mac m7(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out7),.result(mac_out7));
test_mac m8(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out8),.result(mac_out8));
test_mac m9(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out9),.result(mac_out9));
test_mac m10(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out10),.result(mac_out10));
test_mac m11(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out11),.result(mac_out11));
test_mac m12(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out12),.result(mac_out12));
test_mac m13(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out13),.result(mac_out13));
test_mac m14(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out14),.result(mac_out14));
test_mac m15(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out15),.result(mac_out15));
test_mac m16(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out16),.result(mac_out16));
test_mac m17(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out17),.result(mac_out17));
test_mac m18(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out18),.result(mac_out18));
test_mac m19(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out19),.result(mac_out19));
test_mac m20(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out20),.result(mac_out20));
test_mac m21(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out21),.result(mac_out21));
test_mac m22(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out22),.result(mac_out22));
test_mac m23(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out23),.result(mac_out23));
test_mac m24(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out24),.result(mac_out24));
test_mac m25(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out25),.result(mac_out25));
test_mac m26(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out26),.result(mac_out26));
test_mac m27(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out27),.result(mac_out27));
test_mac m28(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(rom_out28),.result(mac_out28));

rom_array r1(.clk(clk),.rst(reset),.r_en(mem_en),.data_out1(rom_out1),.data_out2(rom_out2),.data_out3(rom_out3),.data_out4(rom_out4),.data_out5(rom_out5),.data_out6(rom_out6),.data_out7(rom_out7),.data_out8(rom_out8),.data_out9(rom_out9),.data_out10(rom_out10),.data_out11(rom_out11),.data_out12(rom_out12),.data_out13(rom_out13),.data_out14(rom_out14),.data_out15(rom_out15),.data_out16(rom_out16),.data_out17(rom_out17),.data_out18(rom_out18),.data_out19(rom_out19),.data_out20(rom_out20),.data_out21(rom_out21),.data_out22(rom_out22),.data_out23(rom_out23),.data_out24(rom_out24),.data_out25(rom_out25),.data_out26(rom_out26),.data_out27(rom_out27),.data_out28(rom_out28));
endmodule
