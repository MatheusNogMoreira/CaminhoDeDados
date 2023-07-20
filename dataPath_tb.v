`include "dataPath.v"

module dataPath_tb();
    reg reset;
    reg clk;
    dataPath dataPath_tb(reset, clk);
    integer i;
    always begin
        #1 clk = !clk;
        #1 clk = !clk;
        #1 clk = !clk;
        #1 clk = !clk;
        for (i = 0;i < 32 ; i++) begin
            $display("Register [%d]:        %d", i, dataPath_tb.registers_1.registradores[i]);
        end
        if (dataPath_tb.readInstructions_1.instruction == 0) begin
            $display("-----------------------------------------FIM DE PROGRAMA------------------------------");
            $finish;
        end
        $display("\n\n");
    end
    initial begin
        $dumpfile("dataPath_tb.vcd");
        $dumpvars(0, dataPath_tb);
        clk = 0;
        reset = 1;
        #1 clk = !clk;
        #4
        reset = 0;
        #130 $finish;
    end
endmodule
