//what has to happen-> the two inputs come in, go through all of the components, 
//then use a control to determine what the right one to use is
//I am confused how to do that lol

module ALUMux(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, OutC, control);
input [63:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15;
input [3:0] control;
output [63:0] OutC;

//idk how many select control values there are but i think there is only 1
wire [15:0] aluIn;
assign aluIn = {in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0};

reg [63:0] muxOut;
assign OutC = muxOut;

always @ (aluIn)
begin 
	muxOut = 0;
	case @ (aluIn)
	4'h0001 : muxOut = 1;
	4'h0010 : muxOut = 2;
	4'h0011 : muxOut = 3;
	4'h0100 : muxOut = 4;
	4'h0101 : muxOut = 5;
	4'h0110 : muxOut = 6;
	4'h0111 : muxOut = 7;
	4'h1000 : muxOut = 8;
	4'h1001 : muxOut = 9;
	4'h1010 : muxOut = 10;
	4'h1011 : muxOut = 11;
	4'h1100 : muxOut = 12;
	4'h1101 : muxOut = 13;
	4'h1110 : muxOut = 14;
	4'h1111 : muxOut = 15;
	endcase
end
endmodule