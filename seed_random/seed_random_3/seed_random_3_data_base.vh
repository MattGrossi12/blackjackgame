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
localparam B3_01 = 8'b00000001;  //AS
localparam B3_02 = 8'b00000010;  //02 
localparam B3_03 = 8'b00000011;  //03 
localparam B3_04 = 8'b00000100;  //04 
localparam B3_05 = 8'b00000101;  //05  
localparam B3_06 = 8'b00000110;  //06 
localparam B3_07 = 8'b00000111;  //07 
localparam B3_08 = 8'b00001000;  //08 
localparam B3_09 = 8'b00001001;  //09 
localparam B3_10 = 8'b00001010;  //10 
localparam B3_11 = 8'b00001011;  //J 
localparam B3_12 = 8'b00001100;  //Q 
localparam B3_13 = 8'b00001101;  //K
//--------------------------------------------------------------
//Naipe de 01 - Espadas:
localparam B3_14 = 8'b00010001;  //AS
localparam B3_15 = 8'b00010010;  //02 
localparam B3_16 = 8'b00010011;  //03 
localparam B3_17 = 8'b00010100;  //04 
localparam B3_18 = 8'b00010101;  //05  
localparam B3_19 = 8'b00010110;  //06 
localparam B3_20 = 8'b00010111;  //07 
localparam B3_21 = 8'b00011000;  //08 
localparam B3_22 = 8'b00011001;  //09 
localparam B3_23 = 8'b00011010;  //10 
localparam B3_24 = 8'b00011011;  //J 
localparam B3_25 = 8'b00011100;  //Q 
localparam B3_26 = 8'b00011101;  //K
//--------------------------------------------------------------
//Naipe de 10 - Ouros:
localparam B3_27 = 8'b00100001;  //AS
localparam B3_28 = 8'b00100010;  //02 
localparam B3_29 = 8'b00100011;  //03 
localparam B3_30 = 8'b00100100;  //04 
localparam B3_31 = 8'b00100101;  //05  
localparam B3_32 = 8'b00100110;  //06 
localparam B3_33 = 8'b00100111;  //07 
localparam B3_34 = 8'b00101000;  //08 
localparam B3_35 = 8'b00101001;  //09 
localparam B3_36 = 8'b00101010;  //10 
localparam B3_37 = 8'b00101011;  //J 
localparam B3_38 = 8'b00101100;  //Q 
localparam B3_39 = 8'b00101101;  //K
//--------------------------------------------------------------
//Naipe de 11 - Paus:
localparam B3_40 = 8'b00110001;  //AS
localparam B3_41 = 8'b00110010;  //02 
localparam B3_42 = 8'b00110011;  //03 
localparam B3_43 = 8'b00110100;  //04 
localparam B3_44 = 8'b00110101;  //05  
localparam B3_45 = 8'b00110110;  //06 
localparam B3_46 = 8'b00110111;  //07 
localparam B3_47 = 8'b00111000;  //08 
localparam B3_48 = 8'b00111001;  //09 
localparam B3_49 = 8'b00111010;  //10 
localparam B3_50 = 8'b00111011;  //J 
localparam B3_51 = 8'b00111100;  //Q 
localparam B3_52 = 8'b00111101;  //K
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed3:
localparam position_01 = B3_42;
localparam position_02 = B3_12;
localparam position_03 = B3_40;
localparam position_04 = B3_11;
localparam position_05 = B3_23;
localparam position_06 = B3_29;
localparam position_07 = B3_35;
localparam position_08 = B3_16;
localparam position_09 = B3_02;
localparam position_10 = B3_43;
localparam position_11 = B3_36;
localparam position_12 = B3_37;
localparam position_13 = B3_10;
localparam position_14 = B3_15;
localparam position_15 = B3_47;
localparam position_16 = B3_46;
localparam position_17 = B3_24;
localparam position_18 = B3_21;
localparam position_19 = B3_52;
localparam position_20 = B3_27;
localparam position_21 = B3_14;
localparam position_22 = B3_17;
localparam position_23 = B3_38;
localparam position_24 = B3_25;
localparam position_25 = B3_19;
localparam position_26 = B3_45;
localparam position_27 = B3_31;
localparam position_28 = B3_08;
localparam position_29 = B3_22;
localparam position_30 = B3_28;
localparam position_31 = B3_44;
localparam position_32 = B3_03;
localparam position_33 = B3_48;
localparam position_34 = B3_20;
localparam position_35 = B3_07;
localparam position_36 = B3_05;
localparam position_37 = B3_30;
localparam position_38 = B3_04;
localparam position_39 = B3_33;
localparam position_40 = B3_09;
localparam position_41 = B3_50;
localparam position_42 = B3_18;
localparam position_43 = B3_01;
localparam position_44 = B3_49;
localparam position_45 = B3_13;
localparam position_46 = B3_39;
localparam position_47 = B3_34;
localparam position_48 = B3_51;
localparam position_49 = B3_26;
localparam position_50 = B3_06;
localparam position_51 = B3_41;
localparam position_52 = B3_32;

//States:
localparam IDLE = 0;
localparam SEND = 1;