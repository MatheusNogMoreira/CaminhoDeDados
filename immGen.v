module immGen (
    input wire clk,
    input [31:0] instruction,
    output reg signed [31:0] extImmediate
);
    always @(posedge clk) begin
        if (instruction[6:0] == 7'b0000011) begin // lw
            extImmediate = {{21{instruction[31]}}, instruction[31:20]};
            extImmediate = extImmediate / 4;
        end
        if (instruction[6:0] == 7'b0100011) begin // sw
            extImmediate = {{21{instruction[31]}}, instruction[31:25], instruction[11:7]};
            extImmediate = extImmediate / 4;
        end
        if (instruction[6:0] == 7'b0010011) begin // addi
            extImmediate = {{20{instruction[31]}}, instruction[31:20]};
        end
        if (instruction[6:0] == 7'b1100011) begin
            extImmediate = { {21{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8]};  // BRANCH 
        end
    end
endmodule
