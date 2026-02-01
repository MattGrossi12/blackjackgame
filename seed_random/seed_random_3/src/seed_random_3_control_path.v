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

module seed_random_3_control_path(
    input clk_cp_i,
    input rst_cp_i,
    input req_card_state_cp,

    output state_o
);

//States:
localparam IDLE = 0;
localparam SEND = 1;

reg next_state;

always@(posedge clk_cp_i or negedge rst_cp_i)
    begin
        if(!rst_cp_i)
            begin
                next_state <= IDLE;
            end
        else 
        if(req_card_state_cp)
            begin 
                next_state <= SEND;
            end
        else
            begin
                next_state <= IDLE;
            end
    end

assign state_o = next_state;

endmodule