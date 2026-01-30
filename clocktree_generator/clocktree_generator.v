`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:50 01/26/2026 
// Design Name: 
// Module Name:    baud_rate_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module clocktree_generator(
    input clk_i,
    input start,            //Pino de ativação da cadeia de FFs
    output reg clk_0_out,   //Clock de 100Mhz       1/1
    output reg clk_1_out,   //Clock de 50Mhz        1/2
    output reg clk_2_out,   //Clock de 25Mhz        1/4
    output reg clk_3_out,   //Clock de 12.5Mhz      1/8
    output reg clk_4_out,   //Clock de 6.25Mhz      1/16
    output reg clk_5_out,   //Clock de 3.125Mhz     1/32    (A principio clocks reserva)
    output reg clk_6_out,    //Clock de 1.5625Mhz   1/64    (A principio clocks reserva)
    output reg clk_7_out    //Clock de 1.5625Mhz    1/128   (A principio clocks reserva)
);

reg [7:0] clk_sys;

always@(posedge clk_i)
    begin
        if(start)
            begin
                clk_sys <= clk_sys + 1'b1;
            end
        else 
            begin
                clk_sys <= 1'b0;
            end
    end

always@(*)
    begin
        clk_0_out = clk_sys[0];
        clk_1_out = clk_sys[1];   
        clk_2_out = clk_sys[2]; 
        clk_3_out = clk_sys[3];   
        clk_4_out = clk_sys[4];  
        clk_5_out = clk_sys[5];   
        clk_6_out = clk_sys[6];
        clk_7_out = clk_sys[7];
    end

endmodule