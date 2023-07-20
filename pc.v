module pc(
    input wire clk,
    input wire reset,
    input wire [31:0] pcIn,
    output reg [31:0] pcOut
);
    always @(posedge clk) begin
        if (reset) begin
            pcOut = 31'd0;
        end
        else begin
            pcOut = pcIn;
        end
    end
endmodule
