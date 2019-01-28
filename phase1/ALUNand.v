module ALUNand (
	input [31:0] input_a, input_b,
	output [31:0] sumALU,
	);
	
	reg [31:0] results;
	assign sumALU = results;
	
	
	always @(*)
	begin
		// Logical nand 
           results = ~(input_a & input_b);
       
	end
	
endmodule
		
		
	