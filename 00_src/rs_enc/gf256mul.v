`timescale 1ns/100ps
module gf256mul(
    input       [7:0] a,
    input       [7:0] b,
    output  reg [7:0] z
);
always @(*)
begin
    case (b)
        8'd1:
            begin
                z[0] = a[0];
                z[1] = a[1];
                z[2] = a[2];
                z[3] = a[3];
                z[4] = a[4];
                z[5] = a[5];
                z[6] = a[6];
                z[7] = a[7];
            end
        8'd6:
            begin
                z[0] = a[6] ^ a[7];
                z[1] = a[0] ^ a[7];
                z[2] = a[0] ^ a[1] ^ a[6] ^ a[7];
                z[3] = a[1] ^ a[2] ^ a[6];
                z[4] = a[2] ^ a[3] ^ a[6];
                z[5] = a[3] ^ a[4] ^ a[7];
                z[6] = a[4] ^ a[5];
                z[7] = a[5] ^ a[6];
            end
        8'd8:
            begin
                z[0] = a[5];
                z[1] = a[6];
                z[2] = a[5] ^ a[7];
                z[3] = a[0] ^ a[5] ^ a[6];
                z[4] = a[1] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[2] ^ a[6] ^ a[7];
                z[6] = a[3] ^ a[7];
                z[7] = a[4];
            end
        8'd13:
            begin
                z[0] = a[0] ^ a[5] ^ a[6];
                z[1] = a[1] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[7];
                z[4] = a[1] ^ a[2] ^ a[4] ^ a[5];
                z[5] = a[2] ^ a[3] ^ a[5] ^ a[6];
                z[6] = a[3] ^ a[4] ^ a[6] ^ a[7];
                z[7] = a[4] ^ a[5] ^ a[7];
            end
        8'd15:
            begin
                z[0] = a[0] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[1] ^ a[2] ^ a[5] ^ a[6];
                z[3] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5];
                z[4] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[5] = a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[6] = a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[7] = a[4] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd17:
            begin
                z[0] = a[0] ^ a[4];
                z[1] = a[1] ^ a[5];
                z[2] = a[2] ^ a[4] ^ a[6];
                z[3] = a[3] ^ a[4] ^ a[5] ^ a[7];
                z[4] = a[0] ^ a[5] ^ a[6];
                z[5] = a[1] ^ a[6] ^ a[7];
                z[6] = a[2] ^ a[7];
                z[7] = a[3];
            end
        8'd24:
            begin
                z[0] = a[4] ^ a[5];
                z[1] = a[5] ^ a[6];
                z[2] = a[4] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[0] ^ a[4] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[1] ^ a[4] ^ a[7];
                z[5] = a[1] ^ a[2] ^ a[5];
                z[6] = a[2] ^ a[3] ^ a[6];
                z[7] = a[3] ^ a[4] ^ a[7];
            end
        8'd27:
            begin
                z[0] = a[0] ^ a[4] ^ a[5] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[5] ^ a[6];
                z[2] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
                z[3] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[6];
                z[4] = a[0] ^ a[1] ^ a[3];
                z[5] = a[1] ^ a[2] ^ a[4];
                z[6] = a[2] ^ a[3] ^ a[5];
                z[7] = a[3] ^ a[4] ^ a[6];
            end
        8'd29:
            begin
                z[0] = a[0] ^ a[4] ^ a[5] ^ a[6];
                z[1] = a[1] ^ a[5] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[0] ^ a[1] ^ a[3] ^ a[4];
                z[4] = a[0] ^ a[1] ^ a[2] ^ a[6];
                z[5] = a[1] ^ a[2] ^ a[3] ^ a[7];
                z[6] = a[2] ^ a[3] ^ a[4];
                z[7] = a[3] ^ a[4] ^ a[5];
            end
        8'd30:
            begin
                z[0] = a[4] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[5] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[1] ^ a[4] ^ a[5];
                z[3] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[7];
                z[4] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[5] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[6] = a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[7] = a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd31:
            begin
                z[0] = a[0] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[5] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5];
                z[3] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[4] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[6] ^ a[7];
                z[5] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[6] = a[2] ^ a[3] ^ a[4] ^ a[5];
                z[7] = a[3] ^ a[4] ^ a[5] ^ a[6];
            end
        8'd37:
            begin
                z[0] = a[0] ^ a[3] ^ a[6] ^ a[7];
                z[1] = a[1] ^ a[4] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[1] ^ a[4];
                z[4] = a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[6] = a[1] ^ a[4] ^ a[5] ^ a[7];
                z[7] = a[2] ^ a[5] ^ a[6];
            end
        8'd40:
            begin
                z[0] = a[3] ^ a[5] ^ a[7];
                z[1] = a[4] ^ a[6];
                z[2] = a[3];
                z[3] = a[0] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[4] = a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[6] = a[1] ^ a[3] ^ a[5] ^ a[6];
                z[7] = a[2] ^ a[4] ^ a[6] ^ a[7];
            end
        8'd43:
            begin
                z[0] = a[0] ^ a[3] ^ a[5];
                z[1] = a[0] ^ a[1] ^ a[4] ^ a[6];
                z[2] = a[1] ^ a[2] ^ a[3] ^ a[7];
                z[3] = a[0] ^ a[2] ^ a[4] ^ a[5];
                z[4] = a[1] ^ a[6];
                z[5] = a[0] ^ a[2] ^ a[7];
                z[6] = a[1] ^ a[3];
                z[7] = a[2] ^ a[4];
            end
        8'd44:
            begin
                z[0] = a[3] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[4] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[3] ^ a[6];
                z[3] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[4] = a[1] ^ a[2] ^ a[3] ^ a[4];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5];
                z[6] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[7] = a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd45:
            begin
                z[0] = a[0] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[1] ^ a[4] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[3] ^ a[6];
                z[3] = a[0] ^ a[1] ^ a[4] ^ a[5] ^ a[6];
                z[4] = a[1] ^ a[2] ^ a[3];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[4];
                z[6] = a[1] ^ a[3] ^ a[4] ^ a[5];
                z[7] = a[2] ^ a[4] ^ a[5] ^ a[6];
            end
        8'd49:
            begin
                z[0] = a[0] ^ a[3] ^ a[4] ^ a[7];
                z[1] = a[1] ^ a[4] ^ a[5];
                z[2] = a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[5] ^ a[6];
                z[4] = a[0] ^ a[3] ^ a[4] ^ a[6];
                z[5] = a[0] ^ a[1] ^ a[4] ^ a[5] ^ a[7];
                z[6] = a[1] ^ a[2] ^ a[5] ^ a[6];
                z[7] = a[2] ^ a[3] ^ a[6] ^ a[7];
            end
        8'd50:
            begin
                z[0] = a[3] ^ a[4];
                z[1] = a[0] ^ a[4] ^ a[5];
                z[2] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[3] = a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[7];
                z[6] = a[1] ^ a[2];
                z[7] = a[2] ^ a[3];
            end
        8'd52:
            begin
                z[0] = a[3] ^ a[4] ^ a[6] ^ a[7];
                z[1] = a[4] ^ a[5] ^ a[7];
                z[2] = a[0] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[1] ^ a[3] ^ a[5] ^ a[7];
                z[4] = a[0] ^ a[2] ^ a[3] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[3] ^ a[4];
                z[6] = a[1] ^ a[2] ^ a[4] ^ a[5];
                z[7] = a[2] ^ a[3] ^ a[5] ^ a[6];
            end
        8'd56:
            begin
                z[0] = a[3] ^ a[4] ^ a[5] ^ a[7];
                z[1] = a[4] ^ a[5] ^ a[6];
                z[2] = a[3] ^ a[4] ^ a[6];
                z[3] = a[0] ^ a[3];
                z[4] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[6];
                z[6] = a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[7];
                z[7] = a[2] ^ a[3] ^ a[4] ^ a[6];
            end
        8'd71:
            begin
                z[0] = a[0] ^ a[2];
                z[1] = a[0] ^ a[1] ^ a[3];
                z[2] = a[0] ^ a[1] ^ a[4];
                z[3] = a[1] ^ a[5];
                z[4] = a[6];
                z[5] = a[7];
                z[6] = a[0];
                z[7] = a[1];
            end
        8'd79:
            begin
                z[0] = a[0] ^ a[2] ^ a[5];
                z[1] = a[0] ^ a[1] ^ a[3] ^ a[6];
                z[2] = a[0] ^ a[1] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[0] ^ a[1] ^ a[6];
                z[4] = a[1] ^ a[5] ^ a[7];
                z[5] = a[2] ^ a[6];
                z[6] = a[0] ^ a[3] ^ a[7];
                z[7] = a[1] ^ a[4];
            end
        8'd81:
            begin
                z[0] = a[0] ^ a[2] ^ a[4] ^ a[6] ^ a[7];
                z[1] = a[1] ^ a[3] ^ a[5] ^ a[7];
                z[2] = a[7];
                z[3] = a[2] ^ a[4] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[5] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[7] = a[1] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd82:
            begin
                z[0] = a[2] ^ a[4] ^ a[6];
                z[1] = a[0] ^ a[3] ^ a[5] ^ a[7];
                z[2] = a[1] ^ a[2];
                z[3] = a[3] ^ a[4] ^ a[6];
                z[4] = a[0] ^ a[2] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[1] ^ a[3] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[2] ^ a[4] ^ a[7];
                z[7] = a[1] ^ a[3] ^ a[5];
            end
        8'd100:
            begin
                z[0] = a[2] ^ a[3];
                z[1] = a[3] ^ a[4];
                z[2] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5];
                z[3] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
                z[4] = a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[7];
                z[7] = a[1] ^ a[2];
            end
        8'd103:
            begin
                z[0] = a[0] ^ a[2] ^ a[3] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[3] ^ a[4];
                z[2] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[4] = a[3] ^ a[4] ^ a[5] ^ a[6];
                z[5] = a[0] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[5] ^ a[6] ^ a[7];
                z[7] = a[1] ^ a[2] ^ a[6] ^ a[7];
            end
        8'd104:
            begin
                z[0] = a[2] ^ a[3] ^ a[5] ^ a[6];
                z[1] = a[3] ^ a[4] ^ a[6] ^ a[7];
                z[2] = a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[3] = a[0] ^ a[2] ^ a[4] ^ a[6] ^ a[7];
                z[4] = a[1] ^ a[2] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[3] ^ a[4];
                z[7] = a[1] ^ a[2] ^ a[4] ^ a[5];
            end
        8'd107:
            begin
                z[0] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[2] = a[1] ^ a[3] ^ a[4] ^ a[6];
                z[3] = a[0] ^ a[3] ^ a[4] ^ a[6];
                z[4] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[7] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd116:
            begin
                z[0] = a[2] ^ a[3] ^ a[4];
                z[1] = a[3] ^ a[4] ^ a[5];
                z[2] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
                z[3] = a[1] ^ a[2] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[4] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[5];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[6];
                z[7] = a[1] ^ a[2] ^ a[3] ^ a[7];
            end
        8'd118:
            begin
                z[0] = a[2] ^ a[3] ^ a[4] ^ a[7];
                z[1] = a[0] ^ a[3] ^ a[4] ^ a[5];
                z[2] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[1] ^ a[6];
                z[4] = a[0] ^ a[3] ^ a[4];
                z[5] = a[0] ^ a[1] ^ a[4] ^ a[5];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[5] ^ a[6];
                z[7] = a[1] ^ a[2] ^ a[3] ^ a[6] ^ a[7];
            end
        8'd119:
            begin
                z[0] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5];
                z[2] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[3] = a[1] ^ a[3] ^ a[6];
                z[4] = a[0] ^ a[3];
                z[5] = a[0] ^ a[1] ^ a[4];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[5];
                z[7] = a[1] ^ a[2] ^ a[3] ^ a[6];
            end
        8'd126:
            begin
                z[0] = a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[1] = a[0] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[2] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[6];
                z[3] = a[0] ^ a[1] ^ a[5];
                z[4] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[7] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
            end
        8'd134:
            begin
                z[0] = a[1] ^ a[5];
                z[1] = a[0] ^ a[2] ^ a[6];
                z[2] = a[0] ^ a[3] ^ a[5] ^ a[7];
                z[3] = a[4] ^ a[5] ^ a[6];
                z[4] = a[1] ^ a[6] ^ a[7];
                z[5] = a[2] ^ a[7];
                z[6] = a[3];
                z[7] = a[0] ^ a[4];
            end
        8'd142:
            begin
                z[0] = a[1];
                z[1] = a[0] ^ a[2];
                z[2] = a[0] ^ a[3];
                z[3] = a[0] ^ a[4];
                z[4] = a[5];
                z[5] = a[6];
                z[6] = a[7];
                z[7] = a[0];
            end
        8'd158:
            begin
                z[0] = a[1] ^ a[4];
                z[1] = a[0] ^ a[2] ^ a[5];
                z[2] = a[0] ^ a[3] ^ a[4] ^ a[6];
                z[3] = a[0] ^ a[5] ^ a[7];
                z[4] = a[0] ^ a[4] ^ a[6];
                z[5] = a[1] ^ a[5] ^ a[7];
                z[6] = a[2] ^ a[6];
                z[7] = a[0] ^ a[3] ^ a[7];
            end
        8'd163:
            begin
                z[0] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[6] ^ a[7];
                z[2] = a[2] ^ a[6];
                z[3] = a[1] ^ a[5] ^ a[6];
                z[4] = a[1] ^ a[2] ^ a[3] ^ a[5];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[6];
                z[6] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[7] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
            end
        8'd164:
            begin
                z[0] = a[1] ^ a[3] ^ a[5];
                z[1] = a[2] ^ a[4] ^ a[6];
                z[2] = a[0] ^ a[1] ^ a[7];
                z[3] = a[2] ^ a[3] ^ a[5];
                z[4] = a[1] ^ a[4] ^ a[5] ^ a[6];
                z[5] = a[0] ^ a[2] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[1] ^ a[3] ^ a[6] ^ a[7];
                z[7] = a[0] ^ a[2] ^ a[4] ^ a[7];
            end
        8'd172:
            begin
                z[0] = a[1] ^ a[3];
                z[1] = a[2] ^ a[4];
                z[2] = a[0] ^ a[1] ^ a[5];
                z[3] = a[0] ^ a[2] ^ a[3] ^ a[6];
                z[4] = a[4] ^ a[7];
                z[5] = a[0] ^ a[5];
                z[6] = a[1] ^ a[6];
                z[7] = a[0] ^ a[2] ^ a[7];
            end
        8'd178:
            begin
                z[0] = a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[2] = a[4];
                z[3] = a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[6];
                z[5] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[6] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5];
                z[7] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
            end
        8'd183:
            begin
                z[0] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
                z[2] = a[0] ^ a[2] ^ a[4] ^ a[6];
                z[3] = a[4];
                z[4] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5];
                z[6] = a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
                z[7] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
            end
        8'd187:
            begin
                z[0] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[2] = a[2] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[0] ^ a[1] ^ a[4] ^ a[5] ^ a[7];
                z[4] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[6] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[7] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
            end
        8'd189:
            begin
                z[0] = a[0] ^ a[1] ^ a[3] ^ a[4];
                z[1] = a[1] ^ a[2] ^ a[4] ^ a[5];
                z[2] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
                z[3] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[4] = a[0] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[1] ^ a[2] ^ a[6] ^ a[7];
                z[7] = a[0] ^ a[2] ^ a[3] ^ a[7];
            end
        8'd210:
            begin
                z[0] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[1] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
                z[2] = a[2] ^ a[3] ^ a[5] ^ a[6];
                z[3] = a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
                z[4] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[6];
                z[5] = a[1] ^ a[2] ^ a[4] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[7];
                z[7] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[6];
            end
        8'd216:
            begin
                z[0] = a[1] ^ a[2] ^ a[4];
                z[1] = a[2] ^ a[3] ^ a[5];
                z[2] = a[1] ^ a[2] ^ a[3] ^ a[6];
                z[3] = a[0] ^ a[1] ^ a[3] ^ a[7];
                z[4] = a[0];
                z[5] = a[1];
                z[6] = a[0] ^ a[2];
                z[7] = a[0] ^ a[1] ^ a[3];
            end
        8'd224:
            begin
                z[0] = a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[7];
                z[1] = a[2] ^ a[3] ^ a[4] ^ a[6];
                z[2] = a[1] ^ a[2] ^ a[4];
                z[3] = a[1] ^ a[7];
                z[4] = a[1] ^ a[3] ^ a[5] ^ a[7];
                z[5] = a[0] ^ a[2] ^ a[4] ^ a[6];
                z[6] = a[0] ^ a[1] ^ a[3] ^ a[5] ^ a[7];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[6];
            end
        8'd227:
            begin
                z[0] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6];
                z[2] = a[4] ^ a[7];
                z[3] = a[1] ^ a[2] ^ a[3];
                z[4] = a[1] ^ a[4] ^ a[5];
                z[5] = a[0] ^ a[2] ^ a[5] ^ a[6];
                z[6] = a[0] ^ a[1] ^ a[3] ^ a[6] ^ a[7];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[7];
            end
        8'd231:
            begin
                z[0] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[4] ^ a[6] ^ a[7];
                z[3] = a[2] ^ a[3] ^ a[6] ^ a[7];
                z[4] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
            end
        8'd232:
            begin
                z[0] = a[1] ^ a[2] ^ a[3] ^ a[7];
                z[1] = a[2] ^ a[3] ^ a[4];
                z[2] = a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[3] = a[0] ^ a[1] ^ a[5] ^ a[6] ^ a[7];
                z[4] = a[3] ^ a[6];
                z[5] = a[0] ^ a[4] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[5];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[6];
            end
        8'd238:
            begin
                z[0] = a[1] ^ a[2] ^ a[3] ^ a[6];
                z[1] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[4] ^ a[5] ^ a[6];
                z[3] = a[0] ^ a[2] ^ a[5] ^ a[7];
                z[4] = a[2];
                z[5] = a[0] ^ a[3];
                z[6] = a[0] ^ a[1] ^ a[4];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[5];
            end
        8'd239:
            begin
                z[0] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[6];
                z[1] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[7];
                z[2] = a[0] ^ a[4] ^ a[5] ^ a[6];
                z[3] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[7];
                z[4] = a[2] ^ a[4];
                z[5] = a[0] ^ a[3] ^ a[5];
                z[6] = a[0] ^ a[1] ^ a[4] ^ a[6];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[5] ^ a[7];
            end
        8'd246:
            begin
                z[0] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6];
                z[1] = a[0] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[6] ^ a[7];
                z[2] = a[0] ^ a[2] ^ a[7];
                z[3] = a[2] ^ a[4] ^ a[5] ^ a[6];
                z[4] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
            end
        8'd253:
            begin
                z[0] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[1] = a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5] ^ a[7];
                z[2] = a[0] ^ a[1] ^ a[5] ^ a[7];
                z[3] = a[0] ^ a[3] ^ a[4] ^ a[7];
                z[4] = a[0] ^ a[2] ^ a[3] ^ a[5] ^ a[6] ^ a[7];
                z[5] = a[0] ^ a[1] ^ a[3] ^ a[4] ^ a[6] ^ a[7];
                z[6] = a[0] ^ a[1] ^ a[2] ^ a[4] ^ a[5] ^ a[7];
                z[7] = a[0] ^ a[1] ^ a[2] ^ a[3] ^ a[5] ^ a[6];
            end
        default:
            begin
                z[0] = 0; 
                z[1] = 0; 
                z[2] = 0; 
                z[3] = 0; 
                z[4] = 0; 
                z[5] = 0; 
                z[6] = 0; 
                z[7] = 0; 
            end
    endcase
end
endmodule
