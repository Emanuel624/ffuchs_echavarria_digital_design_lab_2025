module top (input logic [3:0]in, output logic [6:0]out);
	logic [3:0] grayout;
	
	binarytogray u1(
		.binary(in),
		.gray(grayout)
	);
	
	sevenseg u2(
		.data(grayout),
		.segments(out)
	);
endmodule
