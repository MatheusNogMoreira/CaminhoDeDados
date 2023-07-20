module muxMem (
    input wire clk,
    input wire memtoReg,
    input wire [31:0] readData,
    input wire [31:0] aluResult,
    output reg [31:0] writeData
);
    always @(posedge clk) begin
        if(memtoReg == 1) begin
            writeData = readData;
        end
        if (memtoReg == 0) begin
            writeData = aluResult;
        end
        
    end
endmodule