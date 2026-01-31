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
//          Positions
//--------------------------------------------------------------
localparam position_01 = B1_51;
localparam position_02 = B1_16;
localparam position_03 = B1_35;
localparam position_04 = B1_08;
localparam position_05 = B1_34;
localparam position_06 = B1_36;
localparam position_07 = B1_12;
localparam position_08 = B1_44;
localparam position_09 = B1_31;
localparam position_10 = B1_03;
localparam position_11 = B1_32;
localparam position_12 = B1_01;
localparam position_13 = B1_49;
localparam position_14 = B1_07;
localparam position_15 = B1_20;
localparam position_16 = B1_42;
localparam position_17 = B1_47;
localparam position_18 = B1_26;
localparam position_19 = B1_39;
localparam position_20 = B1_46;
localparam position_21 = B1_02;
localparam position_22 = B1_13;
localparam position_23 = B1_24;
localparam position_24 = B1_40;
localparam position_25 = B1_11;
localparam position_26 = B1_33;
localparam position_27 = B1_38;
localparam position_28 = B1_23;
localparam position_29 = B1_10;
localparam position_30 = B1_45;
localparam position_31 = B1_04;
localparam position_32 = B1_29;
localparam position_33 = B1_27;
localparam position_34 = B1_18;
localparam position_35 = B1_37;
localparam position_36 = B1_28;
localparam position_37 = B1_09;
localparam position_38 = B1_21;
localparam position_39 = B1_52;
localparam position_40 = B1_30;
localparam position_41 = B1_05;
localparam position_42 = B1_22;
localparam position_43 = B1_43;
localparam position_44 = B1_48;
localparam position_45 = B1_14;
localparam position_46 = B1_50;
localparam position_47 = B1_41;
localparam position_48 = B1_25;
localparam position_49 = B1_17;
localparam position_50 = B1_19;
localparam position_51 = B1_15;
localparam position_52 = B1_06;

//States:
localparam IDLE = 0;
localparam SEND = 1;