module dataMemory (
    input wire clk,
    input reset, 
    input wire memWrite,
    input wire [31:0] address,
    input wire [31:0] writeData,
    output reg [31:0] readData,
    input wire memRead
);
    reg [31:0] dataMemory[31:0];
    integer i;
    always @(posedge clk) begin
        if(reset) begin
            dataMemory[0] <= 32'd0;
            dataMemory[1] <= 32'd0;
            dataMemory[2] <= 32'd0;
            dataMemory[3] <= 32'd0;
            dataMemory[4] <= 32'd0;
            dataMemory[5] <= 32'd0;
            dataMemory[6] <= 32'd0;
            dataMemory[7] <= 32'd0;
            dataMemory[8] <= 32'd0;
            dataMemory[9] <= 32'd0;
            dataMemory[10] <= 32'd0;
            dataMemory[11] <= 32'd0;
            dataMemory[12] <= 32'd0;
            dataMemory[13] <= 32'd0;
            dataMemory[14] <= 32'd0;
            dataMemory[15] <= 32'd0;
            dataMemory[16] <= 32'd0;
            dataMemory[17] <= 32'd0;
            dataMemory[18] <= 32'd0;
            dataMemory[19] <= 32'd0;
            dataMemory[20] <= 32'd0;
            dataMemory[21] <= 32'd0;
            dataMemory[22] <= 32'd0;
            dataMemory[23] <= 32'd0;
            dataMemory[24] <= 32'd0;
            dataMemory[25] <= 32'd0;
            dataMemory[26] <= 32'd0;
            dataMemory[27] <= 32'd0;
            dataMemory[28] <= 32'd0;
            dataMemory[29] <= 32'd0;
            dataMemory[30] <= 32'd0;
            dataMemory[31] <= 32'd0;
        end
        else begin
            if(memWrite) begin
                dataMemory[address ] = writeData;
            end
            if (memRead) begin
                readData = dataMemory[address];
            end
        end
    end
endmodule