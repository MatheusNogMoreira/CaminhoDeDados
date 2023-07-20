module muxReg(
    input wire clk,
    input wire aluSrc,
    input wire [31:0] readData2,
    input wire [31:0] saidaImmGen,
    output reg [31:0] saida
);
    always @(posedge clk) begin
        if(aluSrc == 0) begin
            saida = readData2;
        end
        if (aluSrc == 1) begin
            saida = saidaImmGen ;
        end
    end 
endmodule
