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
//Baralho 2
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
//Baralho 3
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
//Baralho 4
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
//Seed1
localparam position_b1_card_01 = B1_51;
localparam position_b1_card_02 = B1_16;
localparam position_b1_card_03 = B1_35;
localparam position_b1_card_04 = B1_08;
localparam position_b1_card_05 = B1_34;
localparam position_b1_card_06 = B1_36;
localparam position_b1_card_07 = B1_12;
localparam position_b1_card_08 = B1_44;
localparam position_b1_card_09 = B1_31;
localparam position_b1_card_10 = B1_03;
localparam position_b1_card_11 = B1_32;
localparam position_b1_card_12 = B1_01;
localparam position_b1_card_13 = B1_49;
localparam position_b1_card_14 = B1_07;
localparam position_b1_card_15 = B1_20;
localparam position_b1_card_16 = B1_42;
localparam position_b1_card_17 = B1_47;
localparam position_b1_card_18 = B1_26;
localparam position_b1_card_19 = B1_39;
localparam position_b1_card_20 = B1_46;
localparam position_b1_card_21 = B1_02;
localparam position_b1_card_22 = B1_13;
localparam position_b1_card_23 = B1_24;
localparam position_b1_card_24 = B1_40;
localparam position_b1_card_25 = B1_11;
localparam position_b1_card_26 = B1_33;
localparam position_b1_card_27 = B1_38;
localparam position_b1_card_28 = B1_23;
localparam position_b1_card_29 = B1_10;
localparam position_b1_card_30 = B1_45;
localparam position_b1_card_31 = B1_04;
localparam position_b1_card_32 = B1_29;
localparam position_b1_card_33 = B1_27;
localparam position_b1_card_34 = B1_18;
localparam position_b1_card_35 = B1_37;
localparam position_b1_card_36 = B1_28;
localparam position_b1_card_37 = B1_09;
localparam position_b1_card_38 = B1_21;
localparam position_b1_card_39 = B1_52;
localparam position_b1_card_40 = B1_30;
localparam position_b1_card_41 = B1_05;
localparam position_b1_card_42 = B1_22;
localparam position_b1_card_43 = B1_43;
localparam position_b1_card_44 = B1_48;
localparam position_b1_card_45 = B1_14;
localparam position_b1_card_46 = B1_50;
localparam position_b1_card_47 = B1_41;
localparam position_b1_card_48 = B1_25;
localparam position_b1_card_49 = B1_17;
localparam position_b1_card_50 = B1_19;
localparam position_b1_card_51 = B1_15;
localparam position_b1_card_52 = B1_06;
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed2:
localparam position_b2_card_01 = B2_49;
localparam position_b2_card_02 = B2_05;
localparam position_b2_card_03 = B2_08;
localparam position_b2_card_04 = B2_26;
localparam position_b2_card_05 = B2_34;
localparam position_b2_card_06 = B2_27;
localparam position_b2_card_07 = B2_50;
localparam position_b2_card_08 = B2_31;
localparam position_b2_card_09 = B2_14;
localparam position_b2_card_10 = B2_04;
localparam position_b2_card_11 = B2_10;
localparam position_b2_card_12 = B2_11;
localparam position_b2_card_13 = B2_07;
localparam position_b2_card_14 = B2_52;
localparam position_b2_card_15 = B2_45;
localparam position_b2_card_16 = B2_33;
localparam position_b2_card_17 = B2_12;
localparam position_b2_card_18 = B2_17;
localparam position_b2_card_19 = B2_25;
localparam position_b2_card_20 = B2_38;
localparam position_b2_card_21 = B2_09;
localparam position_b2_card_22 = B2_03;
localparam position_b2_card_23 = B2_42;
localparam position_b2_card_24 = B2_16;
localparam position_b2_card_25 = B2_06;
localparam position_b2_card_26 = B2_20;
localparam position_b2_card_27 = B2_23;
localparam position_b2_card_28 = B2_19;
localparam position_b2_card_29 = B2_37;
localparam position_b2_card_30 = B2_02;
localparam position_b2_card_31 = B2_47;
localparam position_b2_card_32 = B2_28;
localparam position_b2_card_33 = B2_18;
localparam position_b2_card_34 = B2_30;
localparam position_b2_card_35 = B2_32;
localparam position_b2_card_36 = B2_40;
localparam position_b2_card_37 = B2_36;
localparam position_b2_card_38 = B2_43;
localparam position_b2_card_39 = B2_44;
localparam position_b2_card_40 = B2_51;
localparam position_b2_card_41 = B2_48;
localparam position_b2_card_42 = B2_46;
localparam position_b2_card_43 = B2_39;
localparam position_b2_card_44 = B2_41;
localparam position_b2_card_45 = B2_24;
localparam position_b2_card_46 = B2_29;
localparam position_b2_card_47 = B2_22;
localparam position_b2_card_48 = B2_21;
localparam position_b2_card_49 = B2_35;
localparam position_b2_card_50 = B2_01;
localparam position_b2_card_51 = B2_13;
localparam position_b2_card_52 = B2_15;
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed3:
localparam position_b3_card_01 = B3_42;
localparam position_b3_card_02 = B3_12;
localparam position_b3_card_03 = B3_40;
localparam position_b3_card_04 = B3_11;
localparam position_b3_card_05 = B3_23;
localparam position_b3_card_06 = B3_29;
localparam position_b3_card_07 = B3_35;
localparam position_b3_card_08 = B3_16;
localparam position_b3_card_09 = B3_02;
localparam position_b3_card_10 = B3_43;
localparam position_b3_card_11 = B3_36;
localparam position_b3_card_12 = B3_37;
localparam position_b3_card_13 = B3_10;
localparam position_b3_card_14 = B3_15;
localparam position_b3_card_15 = B3_47;
localparam position_b3_card_16 = B3_46;
localparam position_b3_card_17 = B3_24;
localparam position_b3_card_18 = B3_21;
localparam position_b3_card_19 = B3_52;
localparam position_b3_card_20 = B3_27;
localparam position_b3_card_21 = B3_14;
localparam position_b3_card_22 = B3_17;
localparam position_b3_card_23 = B3_38;
localparam position_b3_card_24 = B3_25;
localparam position_b3_card_25 = B3_19;
localparam position_b3_card_26 = B3_45;
localparam position_b3_card_27 = B3_31;
localparam position_b3_card_28 = B3_08;
localparam position_b3_card_29 = B3_22;
localparam position_b3_card_30 = B3_28;
localparam position_b3_card_31 = B3_44;
localparam position_b3_card_32 = B3_03;
localparam position_b3_card_33 = B3_48;
localparam position_b3_card_34 = B3_20;
localparam position_b3_card_35 = B3_07;
localparam position_b3_card_36 = B3_05;
localparam position_b3_card_37 = B3_30;
localparam position_b3_card_38 = B3_04;
localparam position_b3_card_39 = B3_33;
localparam position_b3_card_40 = B3_09;
localparam position_b3_card_41 = B3_50;
localparam position_b3_card_42 = B3_18;
localparam position_b3_card_43 = B3_01;
localparam position_b3_card_44 = B3_49;
localparam position_b3_card_45 = B3_13;
localparam position_b3_card_46 = B3_39;
localparam position_b3_card_47 = B3_34;
localparam position_b3_card_48 = B3_51;
localparam position_b3_card_49 = B3_26;
localparam position_b3_card_50 = B3_06;
localparam position_b3_card_51 = B3_41;
localparam position_b3_card_52 = B3_32;
//--------------------------------------------------------------
//          Positions
//--------------------------------------------------------------
//Seed4:
localparam position_b4_card_01 = B4_35;
localparam position_b4_card_02 = B4_40;
localparam position_b4_card_03 = B4_33;
localparam position_b4_card_04 = B4_06;
localparam position_b4_card_05 = B4_49;
localparam position_b4_card_06 = B4_13;
localparam position_b4_card_07 = B4_18;
localparam position_b4_card_08 = B4_27;
localparam position_b4_card_09 = B4_48;
localparam position_b4_card_10 = B4_08;
localparam position_b4_card_11 = B4_29;
localparam position_b4_card_12 = B4_43;
localparam position_b4_card_13 = B4_39;
localparam position_b4_card_14 = B4_02;
localparam position_b4_card_15 = B4_45;
localparam position_b4_card_16 = B4_01;
localparam position_b4_card_17 = B4_42;
localparam position_b4_card_18 = B4_14;
localparam position_b4_card_19 = B4_32;
localparam position_b4_card_20 = B4_37;
localparam position_b4_card_21 = B4_25;
localparam position_b4_card_22 = B4_47;
localparam position_b4_card_23 = B4_46;
localparam position_b4_card_24 = B4_28;
localparam position_b4_card_25 = B4_10;
localparam position_b4_card_26 = B4_34;
localparam position_b4_card_27 = B4_15;
localparam position_b4_card_28 = B4_03;
localparam position_b4_card_29 = B4_22;
localparam position_b4_card_30 = B4_26;
localparam position_b4_card_31 = B4_16;
localparam position_b4_card_32 = B4_24;
localparam position_b4_card_33 = B4_50;
localparam position_b4_card_34 = B4_12;
localparam position_b4_card_35 = B4_09;
localparam position_b4_card_36 = B4_19;
localparam position_b4_card_37 = B4_23;
localparam position_b4_card_38 = B4_21;
localparam position_b4_card_39 = B4_17;
localparam position_b4_card_40 = B4_41;
localparam position_b4_card_41 = B4_05;
localparam position_b4_card_42 = B4_07;
localparam position_b4_card_43 = B4_38;
localparam position_b4_card_44 = B4_31;
localparam position_b4_card_45 = B4_11;
localparam position_b4_card_46 = B4_44;
localparam position_b4_card_47 = B4_20;
localparam position_b4_card_48 = B4_52;
localparam position_b4_card_49 = B4_51;
localparam position_b4_card_50 = B4_36;
localparam position_b4_card_51 = B4_30;
localparam position_b4_card_52 = B4_04;