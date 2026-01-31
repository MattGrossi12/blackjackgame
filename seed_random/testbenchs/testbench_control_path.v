`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:55 01/30/2026
// Design Name:   seed_random_1_control_path
// Module Name:   /home/matheus/ISE_projects/seed_random_1/testbench_control_path.v
// Project Name:  seed_random_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seed_random_1_control_path
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_control_path;

	// Inputs
	reg clk_cp_i;
	reg rst_cp_i;
	reg req_card_state_cp;

	// Outputs
	wire state_o;

	// Instantiate the Unit Under Test (UUT)
	seed_random_1_control_path uut (
		.clk_cp_i(clk_cp_i), 
		.rst_cp_i(rst_cp_i), 
		.req_card_state_cp(req_card_state_cp), 
		.state_o(state_o)
	);

    initial 
        begin: Clock_generator
          clk_cp_i = 0;
          forever #5 clk_cp_i = ~clk_cp_i;
        end

		//States:
		localparam IDLE = 0;
		localparam SEND = 1;

	initial 
        begin
			rst_cp_i = 1'b0;
			#25;
			rst_cp_i = 1'b1;
			#25;
			req_card_state_cp = 1'b1;
			#50;
			req_card_state_cp = 1'b0;
			#50;
			req_card_state_cp = 1'b1;
			#50;
			req_card_state_cp = 1'b0;
			#50;
			req_card_state_cp = 1'b1;
			#50;
			req_card_state_cp = 1'b0;
			#50;
			$finish;
        end
      
    initial 
        begin: Wavedump
            $dumpfile("control_path.vcd");
            $dumpvars(0);
        end

endmodule

