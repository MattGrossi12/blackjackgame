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
    //Seed-clocks:
    wire clk_0;
    wire clk_1;
    wire clk_2;
    wire clk_3;

    //Clock-counter
    wire clk_4; 
    
    //Reserved:
    wire clk_5;
    wire clk_6;
    wire clk_7;

    wire [7:0] card_seed_1;
    wire [7:0] card_seed_2;
    wire [7:0] card_seed_3;
    wire [7:0] card_seed_4;

    reg [7:0] next_card;
    
    wire [1:0] state_w;
    wire [1:0] seed_w;

/*
    clocktree_generator cg(
                            .clk_i(clk_0),
                            .start(start),
                            .clk_0_out(clk_0),   //Clock de 100Mhz       1/1
                            .clk_1_out(clk_1),   //Clock de 50Mhz        1/2
                            .clk_2_out(clk_2),   //Clock de 25Mhz        1/4
                            .clk_3_out(clk_3),   //Clock de 12.5Mhz      1/8
                            .clk_4_out(clk_4),   //Clock de 6.25Mhz      1/16
                            .clk_5_out(clk_5),   //Clock de 3.125Mhz     1/32    (A principio clocks reserva)
                            .clk_6_out(clk_6),   //Clock de 1.5625Mhz    1/64    (A principio clocks reserva)
                            .clk_7_out(clk_7)    //Clock de 1.5625Mhz    1/128   (A principio clocks reserva)
                        );
*/
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
                                        .req_card_state_dp_i    (state_w),
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