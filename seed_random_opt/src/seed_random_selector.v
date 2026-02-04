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

module seed_random_selector(
    input clk_i,
    input start,
    input rst_i,
    output reg [1:0] seed_sel_o
);

    localparam seed_1 = 2'b00;
    localparam seed_2 = 2'b01;
    localparam seed_3 = 2'b10;
    localparam seed_4 = 2'b11;

always@(posedge clk_0 or negedge rst_i)
    begin
        if(!rst_i)
            begin
                seed_s <= 0;
            end
        else
            begin
                seed_s <= seed_s + 1'b1;
            end
    end

assign seed_sel_o = seed_s;

endmodule