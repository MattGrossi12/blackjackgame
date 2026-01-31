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
localparam B2_01 = 8'b00000001;  //AS
localparam B2_02 = 8'b00000010;  //02 
localparam B2_03 = 8'b00000011;  //03 
localparam B2_04 = 8'b00000100;  //04 
localparam B2_05 = 8'b00000101;  //05  
localparam B2_06 = 8'b00000110;  //06 
localparam B2_07 = 8'b00000111;  //07 
localparam B2_08 = 8'b00001000;  //08 
localparam B2_09 = 8'b00001001;  //09 
localparam B2_10 = 8'b00001010;  //10 
localparam B2_11 = 8'b00001011;  //J 
localparam B2_12 = 8'b00001100;  //Q 
localparam B2_13 = 8'b00001101;  //K
//--------------------------------------------------------------
//Naipe de 01 - Espadas:
localparam B2_14 = 8'b00010001;  //AS
localparam B2_15 = 8'b00010010;  //02 
localparam B2_16 = 8'b00010011;  //03 
localparam B2_17 = 8'b00010100;  //04 
localparam B2_18 = 8'b00010101;  //05  
localparam B2_19 = 8'b00010110;  //06 
localparam B2_20 = 8'b00010111;  //07 
localparam B2_21 = 8'b00011000;  //08 
localparam B2_22 = 8'b00011001;  //09 
localparam B2_23 = 8'b00011010;  //10 
localparam B2_24 = 8'b00011011;  //J 
localparam B2_25 = 8'b00011100;  //Q 
localparam B2_26 = 8'b00011101;  //K
//--------------------------------------------------------------
//Naipe de 10 - Ouros:
localparam B2_27 = 8'b00100001;  //AS
localparam B2_28 = 8'b00100010;  //02 
localparam B2_29 = 8'b00100011;  //03 
localparam B2_30 = 8'b00100100;  //04 
localparam B2_31 = 8'b00100101;  //05  
localparam B2_32 = 8'b00100110;  //06 
localparam B2_33 = 8'b00100111;  //07 
localparam B2_34 = 8'b00101000;  //08 
localparam B2_35 = 8'b00101001;  //09 
localparam B2_36 = 8'b00101010;  //10 
localparam B2_37 = 8'b00101011;  //J 
localparam B2_38 = 8'b00101100;  //Q 
localparam B2_39 = 8'b00101101;  //K
//--------------------------------------------------------------
//Naipe de 11 - Paus:
localparam B2_40 = 8'b00110001;  //AS
localparam B2_41 = 8'b00110010;  //02 
localparam B2_42 = 8'b00110011;  //03 
localparam B2_43 = 8'b00110100;  //04 
localparam B2_44 = 8'b00110101;  //05  
localparam B2_45 = 8'b00110110;  //06 
localparam B2_46 = 8'b00110111;  //07 
localparam B2_47 = 8'b00111000;  //08 
localparam B2_48 = 8'b00111001;  //09 
localparam B2_49 = 8'b00111010;  //10 
localparam B2_50 = 8'b00111011;  //J 
localparam B2_51 = 8'b00111100;  //Q 
localparam B2_52 = 8'b00111101;  //K
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed2:
localparam position_01 = B2_49;
localparam position_02 = B2_05;
localparam position_03 = B2_08;
localparam position_04 = B2_26;
localparam position_05 = B2_34;
localparam position_06 = B2_27;
localparam position_07 = B2_50;
localparam position_08 = B2_31;
localparam position_09 = B2_14;
localparam position_10 = B2_04;
localparam position_11 = B2_10;
localparam position_12 = B2_11;
localparam position_13 = B2_07;
localparam position_14 = B2_52;
localparam position_15 = B2_45;
localparam position_16 = B2_33;
localparam position_17 = B2_12;
localparam position_18 = B2_17;
localparam position_19 = B2_25;
localparam position_20 = B2_38;
localparam position_21 = B2_09;
localparam position_22 = B2_03;
localparam position_23 = B2_42;
localparam position_24 = B2_16;
localparam position_25 = B2_06;
localparam position_26 = B2_20;
localparam position_27 = B2_23;
localparam position_28 = B2_19;
localparam position_29 = B2_37;
localparam position_30 = B2_02;
localparam position_31 = B2_47;
localparam position_32 = B2_28;
localparam position_33 = B2_18;
localparam position_34 = B2_30;
localparam position_35 = B2_32;
localparam position_36 = B2_40;
localparam position_37 = B2_36;
localparam position_38 = B2_43;
localparam position_39 = B2_44;
localparam position_40 = B2_51;
localparam position_41 = B2_48;
localparam position_42 = B2_46;
localparam position_43 = B2_39;
localparam position_44 = B2_41;
localparam position_45 = B2_24;
localparam position_46 = B2_29;
localparam position_47 = B2_22;
localparam position_48 = B2_21;
localparam position_49 = B2_35;
localparam position_50 = B2_01;
localparam position_51 = B2_13;
localparam position_52 = B2_15;

//States:
localparam IDLE = 0;
localparam SEND = 1;