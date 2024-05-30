/*
    二进制加法器
*/
module dff(CLK, Q);

    input CLK;
    output [3 : 0] Q;
    reg [3 : 0] Q1;
    always @(posedge CLK)
        begin
            Q1 <= Q1 + 1;
        end
    assign Q = Q1;

endmodule