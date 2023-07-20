module add4(
    input wire clk,
    input wire reset,
    input wire [31:0] pcOut,
    output reg [31:0] add4Out
);

    always @(posedge clk) begin
        if (reset) begin
            add4Out = 32'b0;
        end
        else begin
            add4Out = pcOut + 32'd4;    
        end
    end
endmodule
