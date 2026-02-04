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

module seed_selector(
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

    reg [1:0] seed_sel;
    reg [7:0] next_card;

    localparam seed_1 = 2'b00;
    localparam seed_2 = 2'b01;
    localparam seed_3 = 2'b10;
    localparam seed_4 = 2'b11;

    clocktree_generator cg(
                            .clk_i(clk_i),
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

    seed_random_1_top seed1(
                            .clk_i(clk_0),
                            .rst_i(rst_i),
                            .request_card_i(request_card_i),
                            .card_to_send_o(card_seed_1)
                            );

    seed_random_2_top seed2(
                            .clk_i(clk_0),
                            .rst_i(rst_i),
                            .request_card_i(request_card_i),
                            .card_to_send_o(card_seed_2)
                            );
                            
    seed_random_3_top seed3(
                            .clk_i(clk_0),
                            .rst_i(rst_i),
                            .request_card_i(request_card_i),
                            .card_to_send_o(card_seed_3)
                            );

    seed_random_4_top seed4(
                            .clk_i(clk_0),
                            .rst_i(rst_i),
                            .request_card_i(request_card_i),
                            .card_to_send_o(card_seed_4)
                            );

always@(*)
    begin
        case(seed_sel)
            seed_1: next_card = card_seed_1;
            seed_2: next_card = card_seed_2;
            seed_3: next_card = card_seed_3;
            seed_4: next_card = card_seed_4;
        endcase
    end

always@(posedge clk_0 or negedge rst_i)
    begin
        if(!rst_i)
            begin
                card_to_send_o <= 0;
            end
        else
        if(request_card_i)
            begin
                card_to_send_o <= next_card;
            end
        else
            begin
                card_to_send_o <= card_to_send_o;
            end
    end

always@(posedge clk_0 or negedge rst_i)
    begin
        if(!rst_i)
            begin
                seed_sel <= 0;
            end
        else
            begin
                seed_sel <= seed_sel + 1'b1;
            end
    end

endmodule