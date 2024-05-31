module dff(CLK, D, Q);

    output reg Q;
    input CLK, D;
    always @(posedge CLK)
        begin
            Q <= D;
        end
    
endmodule