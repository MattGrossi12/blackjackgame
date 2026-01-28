`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:26 01/27/2026
// Design Name:   buffer_fifo
// Module Name:   /home/matheus/ISE_projects/buffer_fifo/testbench.v
// Project Name:  buffer_fifo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: buffer_fifo
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
	reg save;
	reg rst_i;
    reg [7:0] data_in;

	// Outputs
	wire [7:0] data_out_0;
	wire [7:0] data_out_1;
	wire [7:0] data_out_2;
	wire [7:0] data_out_3;
	wire [7:0] data_out_4;
	wire [7:0] data_out_5;
	wire [7:0] data_out_6;
	wire [7:0] data_out_7;
	wire [7:0] data_out_8;
	wire [7:0] data_out_9;
	wire [7:0] data_out_10;

	// Instantiate the Unit Under Test (UUT)
	card_stack uut (
		.clk_i(clk_i), 
		.save(save), 
		.rst_i(rst_i), 
		.data_in(data_in),
		.data_out_0(data_out_0), 
		.data_out_1(data_out_1), 
		.data_out_2(data_out_2), 
		.data_out_3(data_out_3), 
		.data_out_4(data_out_4), 
		.data_out_5(data_out_5), 
		.data_out_6(data_out_6), 
		.data_out_7(data_out_7), 
		.data_out_8(data_out_8), 
		.data_out_9(data_out_9), 
		.data_out_10(data_out_10)
	);
	
    initial 
        begin: Clock_generator
          clk_i = 0;
          forever #5 clk_i = ~clk_i;
        end

	initial begin
		rst_i = 0;
		#20;
		rst_i = 1;
		save = 0;
		#25;
		data_in = 8'b00001010;
		save = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$finish;
	end
      
    initial 
        begin: Wavedump
            $dumpfile("dump.vcd");
            $dumpvars(0);
        end

endmodule

