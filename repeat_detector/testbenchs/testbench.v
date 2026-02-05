`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:00:48 02/05/2026
// Design Name:   repeat_detector
// Module Name:   /home/matheus/ISE_projects/seed_random_1/testbench.v
// Project Name:  seed_random_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: repeat_detector
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
	reg request_card_i;
	reg rst_i;
	reg pos_0;
	reg pos_1;
	reg pos_2;
	reg pos_3;
	reg pos_4;
	reg pos_5;
	reg pos_6;
	reg pos_7;
	reg pos_8;
	reg pos_9;
	reg pos_10;

    //Outputs:
    wire [7:0] card_o;

	// Instantiate the Unit Under Test (UUT)
	repeat_detector uut (
		.clk_i(clk_i), 
		.start(start), 
		.request_card_i(request_card_i), 
		.rst_i(rst_i), 
		.card_o(card_o)
	);

    initial 
        begin: Clock_generator
          clk_i = 0;
          forever #5 clk_i = ~clk_i;
        end

    initial 
        begin: repeat_card
          request_card_i = 0;
          forever #15 request_card_i = ~request_card_i;
        end

	initial 
        begin
            // Initialize Inputs
			rst_i = 0;
			#10;
			rst_i = 1;
			#10;
			start = 1;
			#10;
			//-----------------------------
            #300000;
			$finish;
        end
      
    initial 
        begin: Wavedump
                $dumpfile("../waveforms/repeat.vcd");
            $dumpvars(0);
        end

endmodule

