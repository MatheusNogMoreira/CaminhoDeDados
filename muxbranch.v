module muxbranch(
    input wire clk,
    input wire [31:0] add4Out,
    input wire [31:0] addSumOut,
    input wire branch,
    input wire aluZero,
    output reg [31:0] muxBranchOutp
);
    reg resutado;
    
    always @(posedge clk) begin
        resutado = 1'b0;
        if(branch == 1 && aluZero == 1)begin
            resutado = 1'b1;
        end
        if (resutado == 0) begin
            muxBranchOutp = add4Out;
        end
        if (resutado == 1) begin
            muxBranchOutp = addSumOut;
        end   
    end
endmodule