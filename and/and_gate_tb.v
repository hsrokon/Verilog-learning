module and_gate_tb;

    reg a, b; //inputs are reg because we control them
    wire y;

    //connect our AND gate to the test bench
    and_gate uut (a, b, y);

    initial begin 
        //These two lines creates the file for GTKWave
        $dumpfile ("and_gate_results.vcd");
        $dumpvars (0, and_gate_tb);

        //test sequence
        a=0; b=0; #10; //wait 10 units of time
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $display("Test complete!!!");
        $finish;
    end
endmodule