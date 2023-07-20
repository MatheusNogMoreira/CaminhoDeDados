module alu (
    input wire clk,
    input wire [31:0] readData1,
    input wire [31:0] saidaMusReg,
    input wire [3:0] aluControlOut,
    output reg zero,
    output reg [31:0] aluResult
);

    always @(posedge clk) begin 
        case (aluControlOut)
            4'b0000: begin
                aluResult = readData1 & saidaMusReg;
                zero = 1'b0;
            end
            4'b0001: begin
                aluResult = readData1 | saidaMusReg;
                zero = 1'b0;
            end
            4'b0010: begin
                aluResult = readData1 + saidaMusReg;
                zero = 1'b0;
            end
            4'b0110: begin
                aluResult = readData1 - saidaMusReg;
                if (aluResult == 0) begin
                    zero = 1'b1;
                end
                else begin
                    zero = 1'b0;
                end
            end
        endcase     
    end 
endmodule