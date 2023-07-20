module registers (
    input wire clk,
    input reset, 
    input wire regWrite,
    input wire [4:0] readRegister1,
    input wire [4:0] readRegister2,
    input wire [4:0] writeRegister,
    input wire [31:0] writeData,
    output reg [31:0] readData1,
    output reg [31:0] readData2
);
    reg [31:0] registradores [31:0];
    integer i;
    always @(posedge clk) begin
        if(reset) begin
            registradores[0] <= 32'd0;
            registradores[1] <= 32'd0;
            registradores[2] <= 32'd0;
            registradores[3] <= 32'd0;
            registradores[4] <= 32'd0;
            registradores[5] <= 32'd0;
            registradores[6] <= 32'd0;
            registradores[7] <= 32'd0;
            registradores[8] <= 32'd0;
            registradores[9] <= 32'd0;
            registradores[10] <= 32'd0;
            registradores[11] <= 32'd0;
            registradores[12] <= 32'd0;
            registradores[13] <= 32'd0;
            registradores[14] <= 32'd0;
            registradores[15] <= 32'd0;
            registradores[16] <= 32'd0;
            registradores[17] <= 32'd0;
            registradores[18] <= 32'd0;
            registradores[19] <= 32'd0;
            registradores[20] <= 32'd0;
            registradores[21] <= 32'd0;
            registradores[22] <= 32'd0;
            registradores[23] <= 32'd0;
            registradores[24] <= 32'd0;
            registradores[25] <= 32'd0;
            registradores[26] <= 32'd0;
            registradores[27] <= 32'd0;
            registradores[28] <= 32'd0;
            registradores[29] <= 32'd0;
            registradores[30] <= 32'd0;
            registradores[31] <= 32'd0;
        end
        else begin
            readData1 = registradores[readRegister1];
            readData2 = registradores[readRegister2];
            if(regWrite == 1'b1 && writeRegister != 0 ) begin
                registradores[writeRegister] = writeData;
            end
        end
    end
endmodule