module sevenseg(
    input  logic [3:0] data,
    output logic [6:0] segments
);
    logic [6:0] pattern;

    always_comb begin
        if(data == 4'b0000) begin
            pattern = 7'b0111111; // 0
        end else if (data == 4'b0001) begin
            pattern = 7'b0000110; // 1
        end else if (data == 4'b0011) begin
            pattern = 7'b1011011; // 2
        end else if (data == 4'b0010) begin
            pattern = 7'b1001111; // 3
        end else if (data == 4'b0110) begin
            pattern = 7'b1100110; // 4
        end else if (data == 4'b0111) begin
            pattern = 7'b1101101; // 5
        end else if (data == 4'b0101) begin
            pattern = 7'b1111101; // 6
        end else if (data == 4'b0100) begin
            pattern = 7'b0000111; // 7
        end else if (data == 4'b1100) begin
            pattern = 7'b1111111; // 8
        end else if (data == 4'b1101) begin
            pattern = 7'b1101111; // 9
		  end else if (data == 4'b1111) begin
				pattern = 7'b1110111; // A
        end else if (data == 4'b1110) begin
				pattern = 7'b1111100; // b
        end else if (data == 4'b1010) begin
				pattern = 7'b0111001; // C
        end else if (data == 4'b1011) begin
				pattern = 7'b1011110; // d
        end else if (data == 4'b1001) begin
				pattern = 7'b1111001; // E
        end else if (data == 4'b1000) begin
				pattern = 7'b1110001; // F			
        end else begin
            pattern = 7'b0000000; // apagado
        end
    end


    assign segments = ~pattern;

endmodule
