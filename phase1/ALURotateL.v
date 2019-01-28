module ALURotateL (
	input [31:0] input_a, input_b,
	
	output [31:0] sumALU,
	);
	
	reg [31:0] results;
	assign sumALU = results;
	
	
	always @(*)
	begin
		// Rotate left
           results = {input_b[6:0],input_a[7]};
	end
	
endmodule
		
		
	