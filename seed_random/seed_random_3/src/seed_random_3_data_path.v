//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:06 01/30/2026 
// Design Name: 
// Module Name:    seed_random_1_data_path 
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

module seed_random_3_data_path(
    input clk_dp_i,
    input rst_dp_i,
    input req_card_state_dp_i,

    output [7:0] card_to_send_dp_o
);

`include "seed_random_3_data_base.vh"

    wire [7:0] card_to_send;

    seed_random_3_data_path_counter inst(
                                    .clk_dp_c_i(clk_dp_i),
                                    .rst_dp_c_i(rst_dp_i),
                                    .req_card_state_dp_c_i(req_card_state_dp_i),
                                    .next_card_o(card_to_send)
                                );

reg [7:0] next_card;

//Data-Path:
function [7:0] card_selector (input [7:0] card);
        begin
            case (card)
                1:  card_selector = position_01;
                2:  card_selector = position_02;
                3:  card_selector = position_03;
                4:  card_selector = position_04;
                5:  card_selector = position_05;
                6:  card_selector = position_06;
                7:  card_selector = position_07;
                8:  card_selector = position_08;
                9:  card_selector = position_09;
                10: card_selector = position_10;
                11: card_selector = position_11;
                12: card_selector = position_12;
                13: card_selector = position_13;
                14: card_selector = position_14;
                15: card_selector = position_15;
                16: card_selector = position_16;
                17: card_selector = position_17;
                18: card_selector = position_18;
                19: card_selector = position_19;
                20: card_selector = position_20;
                21: card_selector = position_21;
                22: card_selector = position_22;
                23: card_selector = position_23;
                24: card_selector = position_24;
                25: card_selector = position_25;
                26: card_selector = position_26;
                27: card_selector = position_27;
                28: card_selector = position_28;
                29: card_selector = position_29;
                30: card_selector = position_30;
                31: card_selector = position_31;
                32: card_selector = position_32;
                33: card_selector = position_33;
                34: card_selector = position_34;
                35: card_selector = position_35;
                36: card_selector = position_36;
                37: card_selector = position_37;
                38: card_selector = position_38;
                39: card_selector = position_39;
                40: card_selector = position_40;
                41: card_selector = position_41;
                42: card_selector = position_42;
                43: card_selector = position_43;
                44: card_selector = position_44;
                45: card_selector = position_45;
                46: card_selector = position_46;
                47: card_selector = position_47;
                48: card_selector = position_48;
                49: card_selector = position_49;
                50: card_selector = position_50;
                51: card_selector = position_51;
                52: card_selector = position_52;
                default: card_selector = 8'b00000000;
            endcase
        end
endfunction

always@(posedge clk_dp_i or negedge rst_dp_i)
    begin
        if(!rst_dp_i)
            begin
                    next_card <= 0;
            end
        else 
            begin
                next_card <= card_selector(card_to_send);
            end
    end

assign card_to_send_dp_o = next_card;

endmodule
