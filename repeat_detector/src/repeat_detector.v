//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:00 02/01/2026 
// Design Name: 
// Module Name:    seed_selector 
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
    input [7:0] card_coming_i,

    input pos_0,
    input pos_1,
    input pos_2,
    input pos_3,
    input pos_4,
    input pos_5,
    input pos_6,
    input pos_7,
    input pos_8,
    input pos_9,
    input pos_10,

    output rst_i,
    output request_another_card,
    output let_card_go,
);

    localparam APPROVE = 1'b1;
    localparam DECLINE = 1'b0;

    reg situation_state;

    card_stack stack(
                    .clk_i(clk_i),
                    .save(save),
                    .rst_i(rst_i),
                    .data_in(card_coming_i),
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
        case(card_coming_i)
            pos_0, pos_1, pos_2, pos_3, pos_4, pos_5, pos_6, pos_7, pos_8, pos_9, pos_10:  situation_state = DECLINE;
            default: situation_state = APPROVE;
        endcase
    end

endmodule