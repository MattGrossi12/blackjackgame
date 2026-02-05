    `timescale 1ns / 1ps

    ////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer:
    //
    // Create Date:   09:33:55 01/31/2026
    // Design Name:   seed_random_1_data_path
    // Module Name:   /home/matheus/ISE_projects/seed_random_1/tb.v
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
        reg req_card_state_dp_i;

        // Outputs
        wire [7:0] card_to_send_dp_o;

        // Instantiate the Unit Under Test (UUT)
        seed_random_1_data_path uut (
            .clk_dp_i(clk_dp_i), 
            .rst_dp_i(rst_dp_i), 
            .req_card_state_dp_i(req_card_state_dp_i), 
            .card_to_send_dp_o(card_to_send_dp_o)
        );

        initial 
            begin: Clock_generator
            clk_dp_i = 0;
            forever #5 clk_dp_i = ~clk_dp_i;
            end

        task Initial_state;
        begin
            rst_dp_i = 0;
            req_card_state_dp_i = 0;
            #10;
            rst_dp_i = 1;
        end
        endtask

        task Increment;
        begin
            req_card_state_dp_i = 1;
            #10;
            req_card_state_dp_i = 0;
        end
        endtask

        initial 
            begin
                // Initialize Inputs
                Initial_state();
                repeat(30) 
                    begin
                        Increment();
                    end
                $finish;
            end
        
        initial 
            begin: Wavedump
                $dumpfile("../waveforms/data_path.vcd");
                $dumpvars(0);
            end

    endmodule

