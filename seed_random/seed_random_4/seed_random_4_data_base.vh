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
localparam B4_01 = 8'b00000001;  //AS
localparam B4_02 = 8'b00000010;  //02 
localparam B4_03 = 8'b00000011;  //03 
localparam B4_04 = 8'b00000100;  //04 
localparam B4_05 = 8'b00000101;  //05  
localparam B4_06 = 8'b00000110;  //06 
localparam B4_07 = 8'b00000111;  //07 
localparam B4_08 = 8'b00001000;  //08 
localparam B4_09 = 8'b00001001;  //09 
localparam B4_10 = 8'b00001010;  //10 
localparam B4_11 = 8'b00001011;  //J 
localparam B4_12 = 8'b00001100;  //Q 
localparam B4_13 = 8'b00001101;  //K
//--------------------------------------------------------------
//Naipe de 01 - Espadas:
localparam B4_14 = 8'b00010001;  //AS
localparam B4_15 = 8'b00010010;  //02 
localparam B4_16 = 8'b00010011;  //03 
localparam B4_17 = 8'b00010100;  //04 
localparam B4_18 = 8'b00010101;  //05  
localparam B4_19 = 8'b00010110;  //06 
localparam B4_20 = 8'b00010111;  //07 
localparam B4_21 = 8'b00011000;  //08 
localparam B4_22 = 8'b00011001;  //09 
localparam B4_23 = 8'b00011010;  //10 
localparam B4_24 = 8'b00011011;  //J 
localparam B4_25 = 8'b00011100;  //Q 
localparam B4_26 = 8'b00011101;  //K
//--------------------------------------------------------------
//Naipe de 10 - Ouros:
localparam B4_27 = 8'b00100001;  //AS
localparam B4_28 = 8'b00100010;  //02 
localparam B4_29 = 8'b00100011;  //03 
localparam B4_30 = 8'b00100100;  //04 
localparam B4_31 = 8'b00100101;  //05  
localparam B4_32 = 8'b00100110;  //06 
localparam B4_33 = 8'b00100111;  //07 
localparam B4_34 = 8'b00101000;  //08 
localparam B4_35 = 8'b00101001;  //09 
localparam B4_36 = 8'b00101010;  //10 
localparam B4_37 = 8'b00101011;  //J 
localparam B4_38 = 8'b00101100;  //Q 
localparam B4_39 = 8'b00101101;  //K
//--------------------------------------------------------------
//Naipe de 11 - Paus:
localparam B4_40 = 8'b00110001;  //AS
localparam B4_41 = 8'b00110010;  //02 
localparam B4_42 = 8'b00110011;  //03 
localparam B4_43 = 8'b00110100;  //04 
localparam B4_44 = 8'b00110101;  //05  
localparam B4_45 = 8'b00110110;  //06 
localparam B4_46 = 8'b00110111;  //07 
localparam B4_47 = 8'b00111000;  //08 
localparam B4_48 = 8'b00111001;  //09 
localparam B4_49 = 8'b00111010;  //10 
localparam B4_50 = 8'b00111011;  //J 
localparam B4_51 = 8'b00111100;  //Q 
localparam B4_52 = 8'b00111101;  //K
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed4:
localparam position_01 = B4_35;
localparam position_02 = B4_40;
localparam position_03 = B4_33;
localparam position_04 = B4_06;
localparam position_05 = B4_49;
localparam position_06 = B4_13;
localparam position_07 = B4_18;
localparam position_08 = B4_27;
localparam position_09 = B4_48;
localparam position_10 = B4_08;
localparam position_11 = B4_29;
localparam position_12 = B4_43;
localparam position_13 = B4_39;
localparam position_14 = B4_02;
localparam position_15 = B4_45;
localparam position_16 = B4_01;
localparam position_17 = B4_42;
localparam position_18 = B4_14;
localparam position_19 = B4_32;
localparam position_20 = B4_37;
localparam position_21 = B4_25;
localparam position_22 = B4_47;
localparam position_23 = B4_46;
localparam position_24 = B4_28;
localparam position_25 = B4_10;
localparam position_26 = B4_34;
localparam position_27 = B4_15;
localparam position_28 = B4_03;
localparam position_29 = B4_22;
localparam position_30 = B4_26;
localparam position_31 = B4_16;
localparam position_32 = B4_24;
localparam position_33 = B4_50;
localparam position_34 = B4_12;
localparam position_35 = B4_09;
localparam position_36 = B4_19;
localparam position_37 = B4_23;
localparam position_38 = B4_21;
localparam position_39 = B4_17;
localparam position_40 = B4_41;
localparam position_41 = B4_05;
localparam position_42 = B4_07;
localparam position_43 = B4_38;
localparam position_44 = B4_31;
localparam position_45 = B4_11;
localparam position_46 = B4_44;
localparam position_47 = B4_20;
localparam position_48 = B4_52;
localparam position_49 = B4_51;
localparam position_50 = B4_36;
localparam position_51 = B4_30;
localparam position_52 = B4_04;

//States:
localparam IDLE = 0;
localparam SEND = 1;