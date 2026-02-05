`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:53 01/28/2026
// Design Name:   seed_random_1
// Module Name:   /home/matheus/ISE_projects/seed_random_1/testbench.v
// Project Name:  seed_random_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seed_random_1
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
	reg rst_i;
	reg request_card_i;

	// Outputs
	wire [7:0] card_to_send_o;

	// Instantiate the Unit Under Test (UUT)
	seed_random_opt_top uut (
		.clk_i(clk_i),
		.start(start), 
		.rst_i(rst_i), 
		.request_card_i(request_card_i), 
		.card_to_send_o(card_to_send_o)
	);

    initial 
        begin: Clock_generator
          clk_i = 0;
          forever #5 clk_i = ~clk_i;
        end

	initial 
        begin
            // Initialize Inputs
			rst_i = 0;
			#10;
			rst_i = 1;
			#10;
			start = 1;
            request_card_i = 0;
            #50;
            request_card_i = 1;
			#100;
            request_card_i = 0;
			#150;
            request_card_i = 1;
			#150;
            request_card_i = 0;
			#150;
            request_card_i = 1;
			#150;			
            request_card_i = 0;
			#150;
            request_card_i = 1;
			#150;
            request_card_i = 0;
			#150;
            request_card_i = 1;
			#150;			
            request_card_i = 1;
			#1000;
			$finish;
        end
      
    initial 
        begin: Wavedump
                $dumpfile("../waveforms/top.vcd");
            $dumpvars(0);
        end

endmodule

