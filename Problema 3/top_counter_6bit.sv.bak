module top_counter_6bit (
  input  logic        clk,        // clock de la placa
  input  logic        rst_sw,     // reset asíncrono (switch)
  input  logic        step_btn,   // botón para +1
  input  logic        load_btn,   // botón para cargar
  input  logic [5:0]  sw_val,     // valor a cargar
  output logic [6:0]  seg0,       // dígito 0 (LSB)
  output logic [6:0]  seg1        // dígito 1 (MSB parcial)
);

  // Pulsos de 1 ciclo desde los botones
  logic step_pulse, load_pulse;
  edge_pulse u_step (.clk(clk), .rst(rst_sw), .din_async(step_btn), .pulse(step_pulse));
  edge_pulse u_load (.clk(clk), .rst(rst_sw), .din_async(load_btn), .pulse(load_pulse));

  // Contador de 6 bits (N=6)
  logic [5:0] q;
  logic       ovf;

  counter_n #(.N(6)) u_cnt (
    .clk       (clk),
    .rst       (rst_sw),
    .en_pulse  (step_pulse),
    .load      (load_pulse),
    .load_val  (sw_val),
    .q         (q),
    .carry_out (ovf)
  );

  // Mostrar en HEX:
  // dígito 0 = q[3:0]
  // dígito 1 = {00,q[5:4]} (0..3)
  hex7seg #(.ACTIVE_LOW(1)) u_hex0 (.nibble(q[3:0]), .seg(seg0));
  hex7seg #(.ACTIVE_LOW(1)) u_hex1 (.nibble({2'b00,q[5:4]}), .seg(seg1));

endmodule
