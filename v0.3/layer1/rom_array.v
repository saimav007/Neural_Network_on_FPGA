`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 21:51:22
// Design Name: 
// Module Name: rom_array
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


module rom_array (
    input clk,rst,r_en,
    output [15:0] data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,data_out9,data_out10,data_out11,data_out12,data_out13,data_out14,data_out15,data_out16,data_out17,data_out18,data_out19,data_out20,data_out21,data_out22,data_out23,data_out24,data_out25,data_out26,data_out27,data_out28 // Data output from each ROM
);


    rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights.mem")
    ) rom_inst0 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out1),
        .r_en(r_en)
    );

    rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights2.mem")
    ) rom_inst1 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out2),
        .r_en(r_en)
    );

    rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights3.mem")
    ) rom_inst2 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out3),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights4.mem")
    ) rom_inst3 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out4),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights5.mem")
    ) rom_inst4 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out5),
        .r_en(r_en)
    );

    rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights6.mem")
    ) rom_inst5 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out6),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights7.mem")
    ) rom_inst6 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out7),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights8.mem")
    ) rom_inst7 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out8),
        .r_en(r_en)
    );
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights9.mem")
    ) rom_inst8 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out9),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights10.mem")
    ) rom_inst9 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out10),
        .r_en(r_en)
    );
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights11.mem")
    ) rom_inst10 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out11),
        .r_en(r_en)
    );

         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights12.mem")
    ) rom_inst11 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out12),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights13.mem")
    ) rom_inst12 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out13),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights14.mem")
    ) rom_inst13 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out14),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights15.mem")
    ) rom_inst14 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out15),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights16.mem")
    ) rom_inst15 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out16),
        .r_en(r_en)
    );
    
       rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights17.mem")
    ) rom_inst16 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out17),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights18.mem")
    ) rom_inst17 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out18),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights19.mem")
    ) rom_inst18 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out19),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights20.mem")
    ) rom_inst19 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out20),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights21.mem")
    ) rom_inst20 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out21),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights22.mem")
    ) rom_inst21 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out22),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights23.mem")
    ) rom_inst22 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out23),
        .r_en(r_en)
    );
    
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights24.mem")
    ) rom_inst23 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out24),
        .r_en(r_en)
    );
    
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights25.mem")
    ) rom_inst24 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out25),
        .r_en(r_en)
    );
    
        
        rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights26.mem")
    ) rom_inst25 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out26),
        .r_en(r_en)
    );
            
         rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights27.mem")
    ) rom_inst26 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out27),
        .r_en(r_en)
    );

    rom #(
        .ADDR_WIDTH(2),
        .DATA_OUT_WIDTH(16),
        .MEM_FILE("weights28.mem")
    ) rom_inst27 (
        .clk(clk),
        .rst(rst),
        .data_out(data_out28),
        .r_en(r_en)
    );

endmodule

