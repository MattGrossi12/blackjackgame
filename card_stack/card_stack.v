`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:48 01/27/2026 
// Design Name: 
// Module Name:    buffer_fifo 
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

module card_stack(
    input clk_i,
    input save,
    input rst_i,
    input reg [7:0] data_in,

    output reg [7:0] data_out_0,
    output reg [7:0] data_out_1,
    output reg [7:0] data_out_2,
    output reg [7:0] data_out_3,
    output reg [7:0] data_out_4,
    output reg [7:0] data_out_5,
    output reg [7:0] data_out_6,
    output reg [7:0] data_out_7,
    output reg [7:0] data_out_8,
    output reg [7:0] data_out_9,
    output reg [7:0] data_out_10

);
 //Uma por carta recebida:

/*

Para que isso aconteça, você precisaria de uma combinação específica como esta:

4 cartas de valor 1 (Áses) = 4 pontos

4 cartas de valor 2 = 8 pontos (Total: 12)

3 cartas de valor 3 = 9 pontos (Total: 21)

*/

//data_pack:
reg [7:0] data_stack_0;
reg [7:0] data_stack_1;
reg [7:0] data_stack_2;
reg [7:0] data_stack_3;
reg [7:0] data_stack_4;
reg [7:0] data_stack_5;
reg [7:0] data_stack_6;
reg [7:0] data_stack_7;
reg [7:0] data_stack_8;
reg [7:0] data_stack_9;
reg [7:0] data_stack_10;
reg [7:0] data_receiver;

//Contador de cartas, indo de 0 a 10
reg [3:0] cycle_count;

always@(posedge clk_i or negedge rst_i)
    begin
        if(!rst_i)
            begin
                data_stack_0    =  8'b00000000; 
                data_stack_1    =  8'b00000000; 
                data_stack_2    =  8'b00000000; 
                data_stack_3    =  8'b00000000; 
                data_stack_4    =  8'b00000000; 
                data_stack_5    =  8'b00000000; 
                data_stack_6    =  8'b00000000; 
                data_stack_7    =  8'b00000000; 
                data_stack_8    =  8'b00000000; 
                data_stack_9    =  8'b00000000; 
                data_stack_10   =  8'b00000000; 
                cycle_count     =  4'b0000;
            end
        else 
            if(save)
                begin
                    cycle_count = cycle_count + 1'b1;
                    data_receiver = data_in;
                    if(cycle_count == 1) 
                        begin
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 2) 
                        begin
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 3) 
                        begin
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 4) 
                        begin
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 5) 
                        begin
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 6) 
                        begin
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 7) 
                        begin
                            data_stack_6    =  data_stack_5;                      
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 8) 
                        begin
                            data_stack_7    =  data_stack_6;                      
                            data_stack_6    =  data_stack_5;                      
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 9) 
                        begin
                            data_stack_8    =  data_stack_7;   
                            data_stack_7    =  data_stack_6;                      
                            data_stack_6    =  data_stack_5;                      
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 10) 
                        begin
                            data_stack_9    =  data_stack_8;                     
                            data_stack_8    =  data_stack_7;   
                            data_stack_7    =  data_stack_6;                      
                            data_stack_6    =  data_stack_5;                      
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                    if(cycle_count == 11) 
                        begin
                            data_stack_10   =  data_stack_9;                   
                            data_stack_9    =  data_stack_8;                     
                            data_stack_8    =  data_stack_7;   
                            data_stack_7    =  data_stack_6;                      
                            data_stack_6    =  data_stack_5;                      
                            data_stack_5    =  data_stack_4; 
                            data_stack_4    =  data_stack_3; 
                            data_stack_3    =  data_stack_2;   
                            data_stack_2    =  data_stack_1;
                            data_stack_1    =  data_stack_0;
                            data_stack_0    =  data_receiver;
                        end
                    else 
                        begin
                            data_stack_10   =  data_stack_10;                   
                            data_stack_9    =  data_stack_9;                     
                            data_stack_8    =  data_stack_8;   
                            data_stack_7    =  data_stack_7;                      
                            data_stack_6    =  data_stack_6;                      
                            data_stack_5    =  data_stack_5; 
                            data_stack_4    =  data_stack_4; 
                            data_stack_3    =  data_stack_3;   
                            data_stack_2    =  data_stack_2;
                            data_stack_1    =  data_stack_1;
                            data_stack_0    =  data_stack_0;
                        end
                end
    end

always@(*)
    begin
        data_out_0  = data_stack_0;
        data_out_1  = data_stack_1;
        data_out_2  = data_stack_2;
        data_out_3  = data_stack_3;
        data_out_4  = data_stack_4;
        data_out_5  = data_stack_5;
        data_out_6  = data_stack_6;
        data_out_7  = data_stack_7;
        data_out_8  = data_stack_8;
        data_out_9  = data_stack_9;
        data_out_10 = data_stack_10;
    end

endmodule