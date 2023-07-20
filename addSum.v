module addSum(
    input wire clk,
    input reset,
    input wire [31:0] pcOut,
    input wire [31:0] immediate,
    output reg [31:0] addSumOut
);
    wire [31:0] shiftLImm;

    assign shiftLImm = (immediate <<< 1);
    always @(posedge clk) begin
        if (reset) begin
            addSumOut = 32'b0;
        end
        else begin
            addSumOut = pcOut + shiftLImm; 
        end
    end
endmodule
