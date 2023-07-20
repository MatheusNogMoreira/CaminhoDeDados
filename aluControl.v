module aluControl(
    input wire clk,
    input wire [6:0] funct7,
    input wire [2:0] funct3,
    input wire [1:0] aluOp,
    output reg [3:0] aluControlOut
);
    always @(posedge clk) begin
        case (aluOp)
            2'b00: begin
                if (funct3 == 3'b010) begin
                    aluControlOut = 4'b0010;
                end
            end
            2'b01: begin
                if(funct3 == 3'b000) begin
                    aluControlOut = 4'b0110;
                end
            end
            2'b10: begin
                if (funct3 == 3'b000 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0010;  // soma
                end
                if (funct3 == 3'b000 && funct7 == 7'b0100000) begin
                    aluControlOut = 4'b0110;  // subitração
                end
                if (funct3 == 3'b111 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0000;   // and
                end
                if (funct3 == 3'b110 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0001;  // or
                end
            end
            2'b11: begin
                if (funct3 == 3'b000) begin
                    aluControlOut = 4'b0010; //soma 
                end
            end
        endcase
    end
endmodule