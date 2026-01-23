module not_gate_tb;
    reg a;
    wire y;

    //connect not gate
    not_gate uut(a, y);

    initial begin 

        $dumpfile("not_gate_results.vcd");
        $dumpvars(0, not_gate_tb);

        //truth table  sequence for not. since not only has one input
        a=0; #10; 
        a=1; #10;
        
        $display("NOT gate test complete");
        $finish;
    end
endmodule