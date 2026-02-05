`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:35:42 01/31/2026
// Design Name:   seed_random_1_data_path_counter
// Module Name:   /home/matheus/ISE_projects/seed_random_1/tb1.v
// Project Name:  seed_random_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seed_random_1_data_path_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_data_path_counter;

	// Inputs
	reg clk_dp_c_i;
	reg rst_dp_c_i;
	reg req_card_state_dp_c_i;

	// Outputs
	wire [7:0] next_card_o;

	// Instantiate the Unit Under Test (UUT)
	seed_random_opt_data_path_counter uut (
		.clk_dp_c_i(clk_dp_c_i), 
		.rst_dp_c_i(rst_dp_c_i), 
		.req_card_state_dp_c_i(req_card_state_dp_c_i), 
		.next_card_o(next_card_o)
	);

    initial 
        begin: Clock_generator
          clk_dp_c_i = 0;
          forever #5 clk_dp_c_i = ~clk_dp_c_i;
        end

	initial 
        begin
            // Initialize Inputs
			rst_dp_c_i = 0; req_card_state_dp_c_i = 0;
			#10;
			rst_dp_c_i = 1;
			#10;
            req_card_state_dp_c_i = 1;
			#150;
            req_card_state_dp_c_i = 0;
			#150;
            req_card_state_dp_c_i = 1;
			#150;
			rst_dp_c_i = 0;
			#10;
			rst_dp_c_i = 1;
			#10;
            req_card_state_dp_c_i = 1;
			#150;
            req_card_state_dp_c_i = 0;
			#150;
            req_card_state_dp_c_i = 1;
			#150;
			$finish;
        end
      
    initial 
        begin: Wavedump
            $dumpfile("../waveforms/data_path_counter.vcd");
            $dumpvars(0);
        end

endmodule

