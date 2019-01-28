module ALUMux(input_a, input_b, OutC, control);
input [31:0] input_a;
input [31:0] input_b;
input control;
output [31:0] OutC;

//idk how many select control values there are but i think there is only 1
reg [31:0] muxOut;

assign OutC = muxOut;

always @ (control)
begin 
	case @ (control)
	0 : muxOut <= input_a;
	1 : muxOut <= input_b;
	endcase
end
endmodule