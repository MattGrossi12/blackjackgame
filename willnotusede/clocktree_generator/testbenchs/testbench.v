`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:27 01/26/2026
// Design Name:   baud_rate_generator
// Module Name:   /home/matheus/ISE_projects/baud_rate_generator/testbench.v
// Project Name:  baud_rate_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: baud_rate_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk_i;
	reg start;

	// Outputs
	wire clk_0_out;
	wire clk_1_out;
	wire clk_2_out;
	wire clk_3_out;
	wire clk_4_out;
	wire clk_5_out;
	wire clk_6_out;
	wire clk_7_out;

	// Instantiate the Unit Under Test (DUT)
	clocktree_generator dut (
		.clk_i(clk_i), 
		.start(start), 
		.clk_0_out(clk_0_out), 
		.clk_1_out(clk_1_out), 
		.clk_2_out(clk_2_out), 
		.clk_3_out(clk_3_out), 
		.clk_4_out(clk_4_out), 
		.clk_5_out(clk_5_out), 
		.clk_6_out(clk_6_out), 
		.clk_7_out(clk_7_out)
	);

    initial 
        begin: Clock_generator
          clk_i = 0;
          forever #5 clk_i = ~clk_i;
        end

	initial 
        begin
            // Initialize Inputs
            start = 0;
            #50;
            start = 1;
			#100;
            start = 0;
			#100;
            start = 1;
			#100;

			$finish;
        end
      
    initial 
        begin: Wavedump
            $dumpfile("dump.vcd");
            $dumpvars(0);
        end

endmodule

