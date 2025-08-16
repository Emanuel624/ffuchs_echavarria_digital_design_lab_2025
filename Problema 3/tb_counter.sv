`timescale 1ns/1ps

// =======================
// Top de pruebas (N=2,4,6)
// =======================
module tb_counter;

  initial $display("==== TB counter_n (2,4,6 bits) ====");

  // Señales "visibles" en el top (para el add wave *)
  logic [1:0] q2;  logic done2;
  logic [3:0] q4;  logic done4;
  logic [5:0] q6;  logic done6;

  tb_case #(.N(2)) u2 (.q_out(q2), .done(done2));
  tb_case #(.N(4)) u4 (.q_out(q4), .done(done4));
  tb_case #(.N(6)) u6 (.q_out(q6), .done(done6));

  // Terminar cuando los tres casos pasan
  initial begin
    wait (done2 && done4 && done6);
    $display("==== ALL PASSED ====");
    #10 $finish;
  end

endmodule


// ======================================
// Sub-test parametrizable y self-checking
// ======================================
module tb_case #(parameter int N = 4)(
  output logic [N-1:0] q_out,  // expone la cuenta al top
  output logic         done    // avisa fin del caso
);

  timeunit 1ns; timeprecision 1ps;

  // Reloj
  logic clk = 0;
  always #5 clk = ~clk; // 100 MHz sim

  // DUT
  logic              rst, load, en_pulse;
  logic [N-1:0]      load_val, q;
  logic              ovf;

  counter_n #(.N(N)) dut (
    .clk      (clk),
    .rst      (rst),
    .en_pulse (en_pulse),
    .load     (load),
    .load_val (load_val),
    .q        (q),
    .carry_out(ovf)
  );

  // Modelo de referencia
  int unsigned gold;
  localparam int MOD = (1 << N);

  // Helper: genera 'cycles' pulsos de en_pulse (1 ciclo cada uno)
  task automatic pulse(input int cycles = 1);
    repeat (cycles) begin
      en_pulse = 1; @(posedge clk);
      en_pulse = 0; @(posedge clk);
    end
  endtask

  // Secuencia de verificación
  initial begin
    done = 1'b0;
    $display("-- CASE N=%0d --", N);

    // Init
    rst=0; load=0; en_pulse=0; load_val='0;
    @(posedge clk);

    // Reset asíncrono con valor inicial = 0
    load_val = '0;
    #3 rst = 1; #4 rst = 0;   // asíncrono (no alineado)
    gold = load_val;
    @(posedge clk);
    assert(q == gold) else $fatal("Reset fail N=%0d", N);

    // Carga sincrónica de un valor aleatorio
    load_val = $urandom_range(0, MOD-1);
    load = 1; @(posedge clk); load = 0;
    gold = load_val;
    @(posedge clk);
    assert(q == gold) else $fatal("Load fail N=%0d", N);

    // 20 pasos con chequeo paso a paso
    repeat (20) begin
      pulse(1);
      gold = (gold + 1) % MOD;
      @(posedge clk);
      assert(q == gold) else
        $fatal("Step mismatch N=%0d: got %0d expected %0d", N, q, gold);
    end

    // Reset asíncrono en medio de la cuenta
    load_val = '0;
    #2 rst = 1; #3 rst = 0;
    gold = load_val;
    @(posedge clk);
    assert(q == gold) else $fatal("Async reset mid-run fail N=%0d", N);

    $display("PASS N=%0d", N);
    done = 1'b1;
  end

  // Hacer visible la cuenta al top
  assign q_out = q;

endmodule
