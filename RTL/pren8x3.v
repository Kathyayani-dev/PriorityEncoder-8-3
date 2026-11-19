# code for pren8x3.v

...
    module pren8x3(i,y);
        input [7:0]i;
        output reg [2:0]y;

        always@(*)
        begin
                casex(i)
                8'b00000001: y=3'b000;
                8'b0000001x: y=3'b001;
                8'b000001xx: y=3'b010;
                8'b00001xxx: y=3'b011;
                8'b0001xxxx: y=3'b100;
                8'b001xxxxx: y=3'b101;
                8'b01xxxxxx: y=3'b110;
                8'b1xxxxxxx: y=3'b111;

                default: y= 'bx;
        endcase

                /*if(i[7])
                        y=3'b111;
                else if(i[6])
                        y=3'b110;
                else if(i[5])
                        y=3'b101;
                else if(i[4])
                        y=3'b100;
                else if(i[3])
                        y=3'b011;
                else if(i[2])
                        y=3'b010;
                else if(i[1])
                        y=3'b001;
                else if(i[0])
                        y=3'b000;
                else
                                y= 'bz;*/
        end
        endmodule
...
