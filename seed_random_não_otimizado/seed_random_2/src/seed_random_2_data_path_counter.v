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

module seed_random_2_data_path_counter(
    input clk_dp_c_i,
    input rst_dp_c_i,
    input req_card_state_dp_c_i,
    output reg [7:0] next_card_o
);

`include "seed_random_2_data_base.vh"


reg [7:0] card_counter;
reg state;

always@(*)
    begin
        state = req_card_state_dp_c_i;
        next_card_o = card_counter;
    end

//Counter:
always@(posedge clk_dp_c_i or negedge rst_dp_c_i)
    begin
        if(!rst_dp_c_i)
            begin
                card_counter    <= 0;
                next_card_o <= 0;
            end
        else 
        if(state == 1)
            begin 
                    if(card_counter == 52) 
                        begin
                            card_counter <= 1'b0;
                        end
                    else
                        begin
                            card_counter <= card_counter + 1'b1;
                        end
            end
        else
            begin
                card_counter <= card_counter;
            end
    end

endmodule
