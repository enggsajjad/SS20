`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:46 12/21/2018
// Design Name:   Debouncer
// Module Name:   /home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Framework/tf_deboun.v
// Project Name:  ISE_Framework
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_deboun;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] dataSource;

	// Outputs
	wire [3:0] dataDebounced;


	// Instantiate the Unit Under Test (UUT)
	Debouncer uut 
 (
		.clk(clk), 
		.reset(reset), 
		.dataSource(dataSource), 
		.dataDebounced(dataDebounced)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;


		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		reset = 0;
		dataSource = 4;
		// Add stimulus here

	end
	always
	 begin
	clk = ~ clk ;
	#5;
end

endmodule

