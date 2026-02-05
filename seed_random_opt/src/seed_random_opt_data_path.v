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

module seed_random_opt_data_path(
    input clk_dp_i,
    input rst_dp_i,
    input req_card_state_dp_c_i,
    input [1:0] seed_sel_i,
    output [7:0] card_to_send_dp_o
);

//States:
localparam IDLE = 0;
localparam SEND = 1;

`include "seed_random_opt_data_base.vh"

    wire [7:0] card_to_send;

    seed_random_opt_data_path_counter inst(
                                    .clk_dp_c_i(clk_dp_i),
                                    .rst_dp_c_i(rst_dp_i),
                                    .req_card_state_dp_c_i(req_card_state_dp_c_i),
                                    .next_card_o(card_to_send)
                                );

reg [7:0] next_card;

localparam seed1_now = 2'b00;
localparam seed2_now = 2'b01;
localparam seed3_now = 2'b10;
localparam seed4_now = 2'b11;

//Data-Path:
function [7:0] card_selector;
    input [7:0] card;
    begin
        case (seed_sel_i)

            // ======================================================
            // SEED 1
            // ======================================================
            seed1_now: begin
                case (card)
                    8'd1:  card_selector = position_b1_card_01;
                    8'd2:  card_selector = position_b1_card_02;
                    8'd3:  card_selector = position_b1_card_03;
                    8'd4:  card_selector = position_b1_card_04;
                    8'd5:  card_selector = position_b1_card_05;
                    8'd6:  card_selector = position_b1_card_06;
                    8'd7:  card_selector = position_b1_card_07;
                    8'd8:  card_selector = position_b1_card_08;
                    8'd9:  card_selector = position_b1_card_09;
                    8'd10: card_selector = position_b1_card_10;
                    8'd11: card_selector = position_b1_card_11;
                    8'd12: card_selector = position_b1_card_12;
                    8'd13: card_selector = position_b1_card_13;
                    8'd14: card_selector = position_b1_card_14;
                    8'd15: card_selector = position_b1_card_15;
                    8'd16: card_selector = position_b1_card_16;
                    8'd17: card_selector = position_b1_card_17;
                    8'd18: card_selector = position_b1_card_18;
                    8'd19: card_selector = position_b1_card_19;
                    8'd20: card_selector = position_b1_card_20;
                    8'd21: card_selector = position_b1_card_21;
                    8'd22: card_selector = position_b1_card_22;
                    8'd23: card_selector = position_b1_card_23;
                    8'd24: card_selector = position_b1_card_24;
                    8'd25: card_selector = position_b1_card_25;
                    8'd26: card_selector = position_b1_card_26;
                    8'd27: card_selector = position_b1_card_27;
                    8'd28: card_selector = position_b1_card_28;
                    8'd29: card_selector = position_b1_card_29;
                    8'd30: card_selector = position_b1_card_30;
                    8'd31: card_selector = position_b1_card_31;
                    8'd32: card_selector = position_b1_card_32;
                    8'd33: card_selector = position_b1_card_33;
                    8'd34: card_selector = position_b1_card_34;
                    8'd35: card_selector = position_b1_card_35;
                    8'd36: card_selector = position_b1_card_36;
                    8'd37: card_selector = position_b1_card_37;
                    8'd38: card_selector = position_b1_card_38;
                    8'd39: card_selector = position_b1_card_39;
                    8'd40: card_selector = position_b1_card_40;
                    8'd41: card_selector = position_b1_card_41;
                    8'd42: card_selector = position_b1_card_42;
                    8'd43: card_selector = position_b1_card_43;
                    8'd44: card_selector = position_b1_card_44;
                    8'd45: card_selector = position_b1_card_45;
                    8'd46: card_selector = position_b1_card_46;
                    8'd47: card_selector = position_b1_card_47;
                    8'd48: card_selector = position_b1_card_48;
                    8'd49: card_selector = position_b1_card_49;
                    8'd50: card_selector = position_b1_card_50;
                    8'd51: card_selector = position_b1_card_51;
                    8'd52: card_selector = position_b1_card_52;
                    default: card_selector = 8'h00;
                endcase
            end

            // ======================================================
            // SEED 2
            // ======================================================
            seed2_now: begin
                case (card)
                    8'd1:  card_selector = position_b2_card_01;
                    8'd2:  card_selector = position_b2_card_02;
                    8'd3:  card_selector = position_b2_card_03;
                    8'd4:  card_selector = position_b2_card_04;
                    8'd5:  card_selector = position_b2_card_05;
                    8'd6:  card_selector = position_b2_card_06;
                    8'd7:  card_selector = position_b2_card_07;
                    8'd8:  card_selector = position_b2_card_08;
                    8'd9:  card_selector = position_b2_card_09;
                    8'd10: card_selector = position_b2_card_10;
                    8'd11: card_selector = position_b2_card_11;
                    8'd12: card_selector = position_b2_card_12;
                    8'd13: card_selector = position_b2_card_13;
                    8'd14: card_selector = position_b2_card_14;
                    8'd15: card_selector = position_b2_card_15;
                    8'd16: card_selector = position_b2_card_16;
                    8'd17: card_selector = position_b2_card_17;
                    8'd18: card_selector = position_b2_card_18;
                    8'd19: card_selector = position_b2_card_19;
                    8'd20: card_selector = position_b2_card_20;
                    8'd21: card_selector = position_b2_card_21;
                    8'd22: card_selector = position_b2_card_22;
                    8'd23: card_selector = position_b2_card_23;
                    8'd24: card_selector = position_b2_card_24;
                    8'd25: card_selector = position_b2_card_25;
                    8'd26: card_selector = position_b2_card_26;
                    8'd27: card_selector = position_b2_card_27;
                    8'd28: card_selector = position_b2_card_28;
                    8'd29: card_selector = position_b2_card_29;
                    8'd30: card_selector = position_b2_card_30;
                    8'd31: card_selector = position_b2_card_31;
                    8'd32: card_selector = position_b2_card_32;
                    8'd33: card_selector = position_b2_card_33;
                    8'd34: card_selector = position_b2_card_34;
                    8'd35: card_selector = position_b2_card_35;
                    8'd36: card_selector = position_b2_card_36;
                    8'd37: card_selector = position_b2_card_37;
                    8'd38: card_selector = position_b2_card_38;
                    8'd39: card_selector = position_b2_card_39;
                    8'd40: card_selector = position_b2_card_40;
                    8'd41: card_selector = position_b2_card_41;
                    8'd42: card_selector = position_b2_card_42;
                    8'd43: card_selector = position_b2_card_43;
                    8'd44: card_selector = position_b2_card_44;
                    8'd45: card_selector = position_b2_card_45;
                    8'd46: card_selector = position_b2_card_46;
                    8'd47: card_selector = position_b2_card_47;
                    8'd48: card_selector = position_b2_card_48;
                    8'd49: card_selector = position_b2_card_49;
                    8'd50: card_selector = position_b2_card_50;
                    8'd51: card_selector = position_b2_card_51;
                    8'd52: card_selector = position_b2_card_52;
                    default: card_selector = 8'h00;
                endcase
            end

            // ======================================================
            // SEED 3
            // ======================================================
            seed3_now: begin
                case (card)
                    8'd1:  card_selector = position_b3_card_01;
                    8'd2:  card_selector = position_b3_card_02;
                    8'd3:  card_selector = position_b3_card_03;
                    8'd4:  card_selector = position_b3_card_04;
                    8'd5:  card_selector = position_b3_card_05;
                    8'd6:  card_selector = position_b3_card_06;
                    8'd7:  card_selector = position_b3_card_07;
                    8'd8:  card_selector = position_b3_card_08;
                    8'd9:  card_selector = position_b3_card_09;
                    8'd10: card_selector = position_b3_card_10;
                    8'd11: card_selector = position_b3_card_11;
                    8'd12: card_selector = position_b3_card_12;
                    8'd13: card_selector = position_b3_card_13;
                    8'd14: card_selector = position_b3_card_14;
                    8'd15: card_selector = position_b3_card_15;
                    8'd16: card_selector = position_b3_card_16;
                    8'd17: card_selector = position_b3_card_17;
                    8'd18: card_selector = position_b3_card_18;
                    8'd19: card_selector = position_b3_card_19;
                    8'd20: card_selector = position_b3_card_20;
                    8'd21: card_selector = position_b3_card_21;
                    8'd22: card_selector = position_b3_card_22;
                    8'd23: card_selector = position_b3_card_23;
                    8'd24: card_selector = position_b3_card_24;
                    8'd25: card_selector = position_b3_card_25;
                    8'd26: card_selector = position_b3_card_26;
                    8'd27: card_selector = position_b3_card_27;
                    8'd28: card_selector = position_b3_card_28;
                    8'd29: card_selector = position_b3_card_29;
                    8'd30: card_selector = position_b3_card_30;
                    8'd31: card_selector = position_b3_card_31;
                    8'd32: card_selector = position_b3_card_32;
                    8'd33: card_selector = position_b3_card_33;
                    8'd34: card_selector = position_b3_card_34;
                    8'd35: card_selector = position_b3_card_35;
                    8'd36: card_selector = position_b3_card_36;
                    8'd37: card_selector = position_b3_card_37;
                    8'd38: card_selector = position_b3_card_38;
                    8'd39: card_selector = position_b3_card_39;
                    8'd40: card_selector = position_b3_card_40;
                    8'd41: card_selector = position_b3_card_41;
                    8'd42: card_selector = position_b3_card_42;
                    8'd43: card_selector = position_b3_card_43;
                    8'd44: card_selector = position_b3_card_44;
                    8'd45: card_selector = position_b3_card_45;
                    8'd46: card_selector = position_b3_card_46;
                    8'd47: card_selector = position_b3_card_47;
                    8'd48: card_selector = position_b3_card_48;
                    8'd49: card_selector = position_b3_card_49;
                    8'd50: card_selector = position_b3_card_50;
                    8'd51: card_selector = position_b3_card_51;
                    8'd52: card_selector = position_b3_card_52;
                    default: card_selector = 8'h00;
                endcase
            end

            // ======================================================
            // SEED 4
            // ======================================================
            default: begin
                case (card)
                    8'd1:  card_selector = position_b4_card_01;
                    8'd2:  card_selector = position_b4_card_02;
                    8'd3:  card_selector = position_b4_card_03;
                    8'd4:  card_selector = position_b4_card_04;
                    8'd5:  card_selector = position_b4_card_05;
                    8'd6:  card_selector = position_b4_card_06;
                    8'd7:  card_selector = position_b4_card_07;
                    8'd8:  card_selector = position_b4_card_08;
                    8'd9:  card_selector = position_b4_card_09;
                    8'd10: card_selector = position_b4_card_10;
                    8'd11: card_selector = position_b4_card_11;
                    8'd12: card_selector = position_b4_card_12;
                    8'd13: card_selector = position_b4_card_13;
                    8'd14: card_selector = position_b4_card_14;
                    8'd15: card_selector = position_b4_card_15;
                    8'd16: card_selector = position_b4_card_16;
                    8'd17: card_selector = position_b4_card_17;
                    8'd18: card_selector = position_b4_card_18;
                    8'd19: card_selector = position_b4_card_19;
                    8'd20: card_selector = position_b4_card_20;
                    8'd21: card_selector = position_b4_card_21;
                    8'd22: card_selector = position_b4_card_22;
                    8'd23: card_selector = position_b4_card_23;
                    8'd24: card_selector = position_b4_card_24;
                    8'd25: card_selector = position_b4_card_25;
                    8'd26: card_selector = position_b4_card_26;
                    8'd27: card_selector = position_b4_card_27;
                    8'd28: card_selector = position_b4_card_28;
                    8'd29: card_selector = position_b4_card_29;
                    8'd30: card_selector = position_b4_card_30;
                    8'd31: card_selector = position_b4_card_31;
                    8'd32: card_selector = position_b4_card_32;
                    8'd33: card_selector = position_b4_card_33;
                    8'd34: card_selector = position_b4_card_34;
                    8'd35: card_selector = position_b4_card_35;
                    8'd36: card_selector = position_b4_card_36;
                    8'd37: card_selector = position_b4_card_37;
                    8'd38: card_selector = position_b4_card_38;
                    8'd39: card_selector = position_b4_card_39;
                    8'd40: card_selector = position_b4_card_40;
                    8'd41: card_selector = position_b4_card_41;
                    8'd42: card_selector = position_b4_card_42;
                    8'd43: card_selector = position_b4_card_43;
                    8'd44: card_selector = position_b4_card_44;
                    8'd45: card_selector = position_b4_card_45;
                    8'd46: card_selector = position_b4_card_46;
                    8'd47: card_selector = position_b4_card_47;
                    8'd48: card_selector = position_b4_card_48;
                    8'd49: card_selector = position_b4_card_49;
                    8'd50: card_selector = position_b4_card_50;
                    8'd51: card_selector = position_b4_card_51;
                    8'd52: card_selector = position_b4_card_52;
                    default: card_selector = 8'h00;
                endcase
            end

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
        if(req_card_state_dp_c_i)
            begin
                next_card <= card_selector(card_to_send);
            end
        else
            begin
                next_card <= next_card;
            end
    end

assign card_to_send_dp_o = next_card;

endmodule
