module hex7seg #(
  parameter bit ACTIVE_LOW = 1  
)(
  input  logic [3:0] nibble,
  output logic [6:0] seg      // {a,b,c,d,e,f,g}
);
  logic [6:0] seg_raw;
  always_comb begin
    unique case (nibble)
      4'h0: seg_raw = 7'b1111110;
      4'h1: seg_raw = 7'b0110000;
      4'h2: seg_raw = 7'b1101101;
      4'h3: seg_raw = 7'b1111001;
      4'h4: seg_raw = 7'b0110011;
      4'h5: seg_raw = 7'b1011011;
      4'h6: seg_raw = 7'b1011111;
      4'h7: seg_raw = 7'b1110000;
      4'h8: seg_raw = 7'b1111111;
      4'h9: seg_raw = 7'b1111011;
      4'hA: seg_raw = 7'b1110111;
      4'hB: seg_raw = 7'b0011111;
      4'hC: seg_raw = 7'b1001110;
      4'hD: seg_raw = 7'b0111101;
      4'hE: seg_raw = 7'b1001111;
      4'hF: seg_raw = 7'b1000111;
      default: seg_raw = 7'b0000001;
    endcase
  end
  assign seg = (ACTIVE_LOW) ? ~seg_raw : seg_raw;
endmodule
