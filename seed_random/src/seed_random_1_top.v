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

module seed_random_1_top(
    input clk_i,
    input rst_i,
    input request_card_i,
    output reg [7:0] card_to_send_o
);

    wire state_w;

    seed_random_1_control_path inst1
                                    (
                                        .clk_cp_i           (clk_i),
                                        .rst_cp_i           (rst_i),
                                        .req_card_state_cp  (request_card_i),
                                        .state_o            (state_w)
                                    );

    seed_random_1_data_path inst2
                                    (
                                        .clk_dp_i           (clk_i),
                                        .rst_dp_i           (rst_i),
                                        .req_card_state_dp  (state_w),
                                        .card_to_send_dp    (card_to_send_o)
                                    );

endmodule