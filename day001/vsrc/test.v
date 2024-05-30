// module hello_world();
// initial begin
//     $display ("Hello World\n");
//     $finish;
// end
// endmodule

module select(a, b, s, y);

    input a, b, s;
    output y;
    assign y = (s ? a : b);

endmodule