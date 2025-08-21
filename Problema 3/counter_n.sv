module counter_n #(
  parameter int N = 6
)(
  input  logic              clk,
  input  logic              rst,        // reset ASÍNCRONO, activo en 1
  input  logic              en_pulse,   // un pulso de +1
  input  logic              load,       // carga sincrónica
  input  logic [N-1:0]      load_val,   // valor a cargar
  output logic [N-1:0]      q,          // cuenta actual
  output logic              carry_out   // overflow (c[N])
);

  // Señales internas para la suma 
  logic [N:0]   c;        
  logic [N-1:0] q_next;

  // calcular proximo estado con XOR/AND
  always_comb begin
    c        = '0;
    c[0]     = en_pulse;
    for (int i = 0; i < N; i++) begin
      q_next[i] = q[i] ^ c[i];      
      c[i+1]    = q[i] & c[i];      
    end
  end

  // Registro con reset ASÍNCRONO
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= load_val;                // caso reset
    end else if (load) begin
      q <= load_val;
    end else begin
      q <= q_next;
    end
  end

  assign carry_out = c[N];

endmodule
