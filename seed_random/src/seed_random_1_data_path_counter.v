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

module seed_random_1_data_path_counter(
    input clk_dp_i,
    input rst_dp_i,
    input req_card_state_dp,
    output reg [7:0] card_to_send_dp
);

`include "seed_random_1_data_base.vh"

reg [7:0] next_card;
reg [7:0] card_counter;
reg state;

always@(*)
    begin
        state = req_card_state_dp;
    end

//Counter
always@(posedge clk_dp_i or negedge rst_dp_i)
    begin
        if(!rst_dp_i)
            begin
                card_counter    <= 0;
                next_card       <= 0;
                card_to_send_dp <= 0;
            end
        else 
        if(state == IDLE)
            begin 
                card_counter <= card_counter;
            end
        else
            begin
                card_counter    <= card_counter + 1'b1;
            end
    end

endmodule
