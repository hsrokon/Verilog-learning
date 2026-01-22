module or_gate(
    input a,
    input b,
    output y
);
//the "|" symbol is bitwise OR operator in in verilog
assign y = a | b;
endmodule