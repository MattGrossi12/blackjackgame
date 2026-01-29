`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:20 01/28/2026 
// Design Name: 
// Module Name:    seed_random_1 
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

module seed_random_1(
    input clk_i,
    input rst_i,
    input request_card_i,
    output reg [7:0] card_to_send
);

/*
==============================================================
                    Regras de simbolização:                 
==============================================================
                    Índice de naipes:
--------------------------------------------------------------
                        00 - Copas, 
                        01 - Espadas, 
                        10 - Ouros, 
                        11 - Paus.
--------------------------------------------------------------
            A sequência padrão então, será formada por: 
--------------------------------------------------------------
                            0001-A 
                            0010-2 
                            0011-3 
                            0100-4 
                            0101-5
                            0110-6 
                            0111-7 
                            1000-8 
                            1001-9 
                            1010-10 
                            1011-J 
                            1100-Q 
                            1101-K
--------------------------------------------------------------
Exemplo amostral, Uma carta 4 de paus do Segundo baralho:
--------------------------------------------------------------
                        10 - Segundo baralho 
                        11 - Carta de Paus 
                        0100 - 4
--------------------------------------------------------------
                            Portanto:
                            10110100
--------------------------------------------------------------
                Em nosso caso: Baralho de n* 00 
==============================================================
*/
//--------------------------------------------------------------
//Naipe de 00 - Copas:
localparam B1_01 = 8'b00000001;  //AS
localparam B1_02 = 8'b00000010;  //02 
localparam B1_03 = 8'b00000011;  //03 
localparam B1_04 = 8'b00000100;  //04 
localparam B1_05 = 8'b00000101;  //05  
localparam B1_06 = 8'b00000110;  //06 
localparam B1_07 = 8'b00000111;  //07 
localparam B1_08 = 8'b00001000;  //08 
localparam B1_09 = 8'b00001001;  //09 
localparam B1_10 = 8'b00001010;  //10 
localparam B1_11 = 8'b00001011;  //J 
localparam B1_12 = 8'b00001100;  //Q 
localparam B1_13 = 8'b00001101;  //K
//--------------------------------------------------------------
//Naipe de 01 - Espadas:
localparam B1_14 = 8'b00010001;  //AS
localparam B1_15 = 8'b00010010;  //02 
localparam B1_16 = 8'b00010011;  //03 
localparam B1_17 = 8'b00010100;  //04 
localparam B1_18 = 8'b00010101;  //05  
localparam B1_19 = 8'b00010110;  //06 
localparam B1_20 = 8'b00010111;  //07 
localparam B1_21 = 8'b00011000;  //08 
localparam B1_22 = 8'b00011001;  //09 
localparam B1_23 = 8'b00011010;  //10 
localparam B1_24 = 8'b00011011;  //J 
localparam B1_25 = 8'b00011100;  //Q 
localparam B1_26 = 8'b00011101;  //K
//--------------------------------------------------------------
//Naipe de 10 - Ouros:
localparam B1_27 = 8'b00100001;  //AS
localparam B1_28 = 8'b00100010;  //02 
localparam B1_29 = 8'b00100011;  //03 
localparam B1_30 = 8'b00100100;  //04 
localparam B1_31 = 8'b00100101;  //05  
localparam B1_32 = 8'b00100110;  //06 
localparam B1_33 = 8'b00100111;  //07 
localparam B1_34 = 8'b00101000;  //08 
localparam B1_35 = 8'b00101001;  //09 
localparam B1_36 = 8'b00101010;  //10 
localparam B1_37 = 8'b00101011;  //J 
localparam B1_38 = 8'b00101100;  //Q 
localparam B1_39 = 8'b00101101;  //K
//--------------------------------------------------------------
//Naipe de 11 - Paus:
localparam B1_40 = 8'b00110001;  //AS
localparam B1_41 = 8'b00110010;  //02 
localparam B1_42 = 8'b00110011;  //03 
localparam B1_43 = 8'b00110100;  //04 
localparam B1_44 = 8'b00110101;  //05  
localparam B1_45 = 8'b00110110;  //06 
localparam B1_46 = 8'b00110111;  //07 
localparam B1_47 = 8'b00111000;  //08 
localparam B1_48 = 8'b00111001;  //09 
localparam B1_49 = 8'b00111010;  //10 
localparam B1_50 = 8'b00111011;  //J 
localparam B1_51 = 8'b00111100;  //Q 
localparam B1_52 = 8'b00111101;  //K
//--------------------------------------------------------------
reg [7:0] next_card;
reg [7:0] card_counter;

/*
function [7:0] card_selector;
    input [7:0] counter;
        begin
            case (counter)
                1:  card_selector = B1_51;
                2:  card_selector = B1_16;
                3:  card_selector = B1_35;
                4:  card_selector = B1_08;
                5:  card_selector = B1_34;
                6:  card_selector = B1_36;
                7:  card_selector = B1_12;
                8:  card_selector = B1_44;
                9:  card_selector = B1_31;
                10: card_selector = B1_03;
                11: card_selector = B1_32;
                12: card_selector = B1_01;
                13: card_selector = B1_49;
                14: card_selector = B1_07;
                15: card_selector = B1_20;
                16: card_selector = B1_42;
                17: card_selector = B1_47;
                18: card_selector = B1_26;
                19: card_selector = B1_39;
                20: card_selector = B1_46;
                21: card_selector = B1_02;
                22: card_selector = B1_13;
                23: card_selector = B1_24;
                24: card_selector = B1_40;
                25: card_selector = B1_11;
                26: card_selector = B1_33;
                27: card_selector = B1_38;
                28: card_selector = B1_23;
                29: card_selector = B1_10;
                30: card_selector = B1_45;
                31: card_selector = B1_04;
                32: card_selector = B1_29;
                33: card_selector = B1_27;
                34: card_selector = B1_18;
                35: card_selector = B1_37;
                36: card_selector = B1_28;
                37: card_selector = B1_09;
                38: card_selector = B1_21;
                39: card_selector = B1_52;
                40: card_selector = B1_30;
                41: card_selector = B1_05;
                42: card_selector = B1_22;
                43: card_selector = B1_43;
                44: card_selector = B1_48;
                45: card_selector = B1_14;
                46: card_selector = B1_50;
                47: card_selector = B1_41;
                48: card_selector = B1_25;
                49: card_selector = B1_17;
                50: card_selector = B1_19;
                51: card_selector = B1_15;
                52: card_selector = B1_06;
                default: card_selector = 8'b00000000;
            endcase
        end
endfunction
*/

always@(posedge clk_i or negedge rst_i)
    begin
        if(!rst_i)
            begin
                card_counter <= 0;
                next_card    <= 0;
                card_to_send <= 0;
            end
        else 
        if(request_card_i)
            begin 
                card_counter    <= card_counter + 1'b1;
                card_to_send    <= next_card;
            end
        else
            begin
                next_card <= next_card;
            end
    end

assign next_card = card_selector(card_counter + 1'b1);

endmodule