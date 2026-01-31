`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:05 01/30/2026
// Design Name:   seed_random_1_data_path
// Module Name:   /home/matheus/ISE_projects/seed_random_1/testbench_data_path.v
// Project Name:  seed_random_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seed_random_1_data_path
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_data_path;

	// Inputs
	reg clk_dp_i;
	reg rst_dp_i;
	reg req_card_state_dp;

	// Outputs
	wire [7:0] card_to_send_dp;

	// Instantiate the Unit Under Test (UUT)
	seed_random_1_data_path uut (
		.clk_dp_i(clk_dp_i), 
		.rst_dp_i(rst_dp_i), 
		.req_card_state_dp(req_card_state_dp), 
		.card_to_send_dp(card_to_send_dp)
	);

    initial 
        begin: Clock_generator
          clk_dp_i = 0;
          forever #5 clk_dp_i = ~clk_dp_i;
        end

	initial 
        begin
            // Initialize Inputs
			rst_dp_i = 1;
			#10;
			rst_dp_i = 0;
			#10;
            req_card_state_dp = 0;
            #50;
            req_card_state_dp = 1;
			#100;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;			
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;			
            req_card_state_dp = 1;
            req_card_state_dp = 0;
            #50;
            req_card_state_dp = 1;
			#100;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;			
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;
            req_card_state_dp = 0;
			#25;
            req_card_state_dp = 1;
			#25;			
            req_card_state_dp = 1;
			#1000;
			$finish;
        end
      
    initial 
        begin: Wavedump
            $dumpfile("dump.vcd");
            $dumpvars(0);
        end

endmodule

