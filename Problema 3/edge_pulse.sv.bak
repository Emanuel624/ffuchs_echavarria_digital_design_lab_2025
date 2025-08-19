module edge_pulse (
  input  logic clk,
  input  logic rst,     // mismo reset asíncrono del sistema (opcional)
  input  logic din_async,
  output logic pulse
);
  logic s0, s1;  // dos flip-flops de sincronización
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      s0 <= 1'b0; s1 <= 1'b0;
    end else begin
      s0 <= din_async;
      s1 <= s0;
    end
  end

  logic s1_d;
  always_ff @(posedge clk or posedge rst) begin
    if (rst) s1_d <= 1'b0;
    else     s1_d <= s1;
  end

  assign pulse = (s1 & ~s1_d); // rising-edge, 1 ciclo
endmodule
