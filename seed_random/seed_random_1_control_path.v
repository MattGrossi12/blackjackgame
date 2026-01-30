`timescale 1ns / 1ps
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

module seed_random_1_control_path(
    input clk_i,
    input rst_i,
    input request_card_i,

    output state_o;
);
//States:
localparam IDLE = 0;
localparam SEND = 1;

reg next_state;


always@(posedge clk_i or negedge rst_i)
    begin
        if(!rst_i)
            begin
                next_state <= IDLE;
            end
        else 
        if(request_card_i)
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