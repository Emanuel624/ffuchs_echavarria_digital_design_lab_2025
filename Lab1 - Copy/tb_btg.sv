module tb_btg;
    logic [3:0] binary;
    logic [3:0] gray;

    // Instancia del módulo bajo prueba
    binarytogray uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $display("Binario | Gray");
        $display("--------+------");

        for (int i = 0; i < 16; i++) begin
            binary = i;
            #1; // da tiempo a que 'gray' se actualice
            $display("%b   | %b", binary, gray);
        end

        $finish;
    end
endmodule
