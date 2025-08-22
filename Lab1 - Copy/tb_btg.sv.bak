module tb_btg;
    logic [3:0] binary;
    logic [3:0] gray;

    // Instanciamos el módulo
    binarytogray uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $display("Binario | Gray");
        $display("--------+------");

        // Probamos todos los valores posibles de 4 bits
        for (int i = 0; i < 16; i++) begin
            binary = i;
            #1; // Pequeño retardo para evaluar
            $display("%b   | %b", binary, gray);
        end

        $finish;
    end
endmodule