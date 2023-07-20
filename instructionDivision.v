module instructionDivision(
    input wire clk,
    input wire [31:0] instruction,
    output reg [6:0] opcode, 
    output reg [2:0] funct3,
    output reg [6:0] funct7,
    output reg [4:0] rd,
    output reg [4:0] rs1,
    output reg [4:0] rs2
    );
    always @(posedge clk) begin
        opcode = instruction[6:0];
        funct3 = instruction[14:12];
        funct7 = instruction[31:25];
        rd = instruction[11:7];
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];

    end 
endmodule