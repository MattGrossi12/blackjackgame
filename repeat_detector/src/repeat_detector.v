//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:59:15 02/05/2026 
// Design Name: 
// Module Name:    repeat_detector 
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

module repeat_detector(
    input clk_i,
    input start,
    input request_card_i,
    input rst_i,

    output reg [7:0] card_o
);

    localparam APPROVE = 1'b1;
    localparam DECLINE = 1'b0;

    reg situation_state;
    reg request_another_card;
    reg temp_save;

    wire save;
    wire card_requisiton;

    wire   [7:0] card_i;

    wire [7:0] pos_0;
    wire [7:0] pos_1;
    wire [7:0] pos_2;
    wire [7:0] pos_3;
    wire [7:0] pos_4;
    wire [7:0] pos_5;
    wire [7:0] pos_6;
    wire [7:0] pos_7;
    wire [7:0] pos_8;
    wire [7:0] pos_9;
    wire [7:0] pos_10;

    seed_random_opt_top srinst(
                                .clk_i(clk_i),
                                .start(start),
                                .rst_i(rst_i),
                                .request_card_i(card_requisiton),
                                .card_to_send_o(card_i)
                            );

    card_stack stack(
                    .clk_i(clk_i),
                    .save(save),
                    .rst_i(rst_i),
                    .data_in(card_o),
                    .data_out_0(pos_0),
                    .data_out_1(pos_1),
                    .data_out_2(pos_2),
                    .data_out_3(pos_3),
                    .data_out_4(pos_4),
                    .data_out_5(pos_5),
                    .data_out_6(pos_6),
                    .data_out_7(pos_7),
                    .data_out_8(pos_8),
                    .data_out_9(pos_9),
                    .data_out_10(pos_10)
                    );

always@(posedge clk_i)
    begin
        case(card_i)
            pos_0, pos_1, pos_2, pos_3, pos_4, pos_5, pos_6, pos_7, pos_8, pos_9, pos_10:  situation_state <= DECLINE;
            default: situation_state <= APPROVE;
        endcase
    end

always@(posedge clk_i)
    begin
        if(situation_state == APPROVE)
            begin
                card_o <= card_i;
                temp_save <= 1'b1;
            end
        else
            begin
                request_another_card <= 1'b1;
                card_o <= card_i;
                temp_save <= 1'b0;
            end
    end

assign card_requisiton = request_another_card | request_card_i;
assign save = temp_save;

endmodule