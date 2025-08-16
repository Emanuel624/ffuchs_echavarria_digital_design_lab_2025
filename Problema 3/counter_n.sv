module counter_n #(
  parameter int N = 6
)(
  input  logic              clk,
  input  logic              rst,        // reset ASÍNCRONO, activo en '1'
  input  logic              en_pulse,   // un pulso de 1 ciclo => +1
  input  logic              load,       // carga sincrónica
  input  logic [N-1:0]      load_val,   // valor a cargar
  output logic [N-1:0]      q,          // cuenta actual
  output logic              carry_out   // overflow (c[N])
);

  // Señales internas para la suma +1 estilo ripple
  logic [N:0]   c;        // c[0] = en_pulse ; c[N] = carry_out
  logic [N-1:0] q_next;

  // Combinacional: calcular próximo estado con XOR/AND
  always_comb begin
    c        = '0;
    c[0]     = en_pulse;
    for (int i = 0; i < N; i++) begin
      q_next[i] = q[i] ^ c[i];      // Q_i^+ = Q_i XOR c_i
      c[i+1]    = q[i] & c[i];      // c_{i+1} = Q_i AND c_i
    end
  end

  // Registro con reset ASÍNCRONO
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= load_val;                // al reset, ir al valor inicial
    end else if (load) begin
      q <= load_val;
    end else begin
      q <= q_next;
    end
  end

  assign carry_out = c[N];

endmodule
