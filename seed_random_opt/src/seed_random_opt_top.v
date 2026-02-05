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

module seed_random_opt_top(
    input clk_i,
    input start,
    input rst_i,
    input request_card_i,
    output reg [7:0] card_to_send_o
);

    wire [7:0] card_seed_1;
    wire [7:0] card_seed_2;
    wire [7:0] card_seed_3;
    wire [7:0] card_seed_4;

    reg [7:0] next_card;
    
    wire state_w;
    wire [1:0] seed_w;

    seed_random_opt_control_path srcp
                                    (
                                        .clk_cp_i           (clk_i),
                                        .rst_cp_i           (rst_i),
                                        .req_card_state_cp  (request_card_i),
                                        .state_o            (state_w)
                                    );

    seed_random_opt_data_path srdp
                                    (
                                        .clk_dp_i               (clk_i),
                                        .rst_dp_i               (rst_i),
                                        .req_card_state_dp_c_i    (state_w),
                                        .seed_sel_i             (seed_w),
                                        .card_to_send_dp_o      (card_to_send_o)
                                    );

    seed_random_selector seed_s(
                            .clk_i(clk_i),
                            .start(start),
                            .rst_i(rst_i),
                            .seed_sel_o(seed_w)
                        );

endmodule