# code for pren8x3_tb.v
  ...
     module pren8x3_tb();
        reg [7:0]i;
        wire [2:0]y;

        integer j;

        pren8x3 DUT(i,y);

        task initialize();
                begin
                        i=0;
                end
        endtask

        task stimulus(input [7:0]a);
                begin
                        i=a;
                end
        endtask

        task delay();
                begin
                        #10;
                end
        endtask

        initial
        begin
                initialize;
                for(j=0;j<256;j=j+1)
                begin
                        stimulus(j);
                        delay;
                end
        end

        initial
                $monitor("%b   %b",i,y);
        endmodule
...
