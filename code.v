module Traffic_light(state,reset,grn,ylw,rd,z);
input[1:0] state;
input reset;
output reg [3:0]grn,ylw,rd,z;
always@(reset or state)
Begin
    if(reset==0)
        Begin
        grn=4’b0000;
        ylw=4’b0000;
        rd=4'b1111;
        z=4'b1111;
        end
    else
        case (state)
        2'b00:
            Begin
            grn=4'b0001;
            ylw=4'b0010;
            rd=4'b1100;
            z=4'b1100;
            end
        2'b01:
            Begin
            grn=4'b0010;
            ylw=4'b0100;
            rd=4'b1001;
            z=4'b1001;
            end
        2'b10:
            Begin
            grn=4'b0100;
            ylw=4'b1000;
            rd=4'b0011;
            z=4'b0011;
            end
        2’b11:
            Begin
            grn=4’b1000;
            ylw=4'b0001;
            rd=4'b0110;
            z=4'b0110;
            end
        default:
            Begin
            grn=4’b0000;
            ylw=4’b0000;
            rd=4'b1111;
            z=4’b0000;
            end
        endcase
end
endmodule
