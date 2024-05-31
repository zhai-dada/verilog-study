module example(CLK, D, A, Q);

    output Q;
    input CLK, D, A;
    wire D1, Q1;
    dff dff1(.CLK(CLK), .D(D1), .Q(Q1));
    dff dff2(.CLK(Q1), .D(D), .Q(Q));
    or(D1, A, Q);

endmodule
