module readInstructions(
    input wire clk,
    input wire reset,
    input wire [31:0] memAddress,
    output reg [31:0] instruction
);

    reg [31:0] instructionMem [0:31];
    always @(posedge clk) begin
        if (reset) begin 
            instructionMem[0] <= 32'b00000000011100000000000100010011; 
            instructionMem[1] <= 32'b00000000100000000000000010010011; 
            instructionMem[2] <= 32'b00000000001000001000000110110011; 
            instructionMem[3] <= 32'b00000000000000000000000000000000; 
            instructionMem[4] <= 32'b00000000000000000000000000000000; 
            instructionMem[5] <= 32'b00000000000000000000000000000000; 
            instructionMem[6] <= 32'b00000000000000000000000000000000; 
            instructionMem[7] <= 32'b00000000000000000000000000000000;
            instructionMem[8] <= 32'b00000000000000000000000000000000; 
            instructionMem[9] <= 32'b00000000000000000000000000000000; 
            instructionMem[10] <= 32'b00000000000000000000000000000000; 
            instructionMem[11] <= 32'b00000000000000000000000000000000; 
            instructionMem[12] <= 32'b00000000000000000000000000000000; 
            instructionMem[13] <= 32'b00000000000000000000000000000000; 
            instructionMem[14] <= 32'b00000000000000000000000000000000;
            instructionMem[15] <= 32'b00000000000000000000000000000000;
            instructionMem[16] <= 32'b00000000000000000000000000000000;
            instructionMem[17] <= 32'b00000000000000000000000000000000;
            instructionMem[18] <= 32'b00000000000000000000000000000000;
            instructionMem[19] <= 32'b00000000000000000000000000000000;
            instructionMem[20] <= 32'b00000000000000000000000000000000;
            instructionMem[21] <= 32'b00000000000000000000000000000000;
            instructionMem[22] <= 32'b00000000000000000000000000000000;
            instructionMem[23] <= 32'b00000000000000000000000000000000;
            instructionMem[24] <= 32'b00000000000000000000000000000000;
            instructionMem[25] <= 32'b00000000000000000000000000000000;
            instructionMem[26] <= 32'b00000000000000000000000000000000;
            instructionMem[27] <= 32'b00000000000000000000000000000000;
            instructionMem[28] <= 32'b00000000000000000000000000000000;
            instructionMem[29] <= 32'b00000000000000000000000000000000;
            instructionMem[30] <= 32'b00000000000000000000000000000000;
            instructionMem[31] <= 32'b00000000000000000000000000000000;
        end
        else begin
            instruction = instructionMem[memAddress / 4];
        end
    end
endmodule
