
`timescale 1ns/100ps

module gf8inv(
    input       [2:0] a,
    output  reg [2:0] z
);
always @(*)
begin
    case (a)
        3'd  2 : z = 3'd  5; 
        3'd  4 : z = 3'd  7; 
        3'd  3 : z = 3'd  6; 
        3'd  6 : z = 3'd  3; 
        3'd  7 : z = 3'd  4; 
        3'd  5 : z = 3'd  2; 
        3'd  1 : z = 3'd  1; 
    endcase
end
endmodule


module gf16inv(
    input       [3:0] a,
    output  reg [3:0] z
);
always @(*)
begin
    case (a)
        4'd  2 : z = 4'd  9; 
        4'd  4 : z = 4'd 13; 
        4'd  8 : z = 4'd 15; 
        4'd  3 : z = 4'd 14; 
        4'd  6 : z = 4'd  7; 
        4'd 12 : z = 4'd 10; 
        4'd 11 : z = 4'd  5; 
        4'd  5 : z = 4'd 11; 
        4'd 10 : z = 4'd 12; 
        4'd  7 : z = 4'd  6; 
        4'd 14 : z = 4'd  3; 
        4'd 15 : z = 4'd  8; 
        4'd 13 : z = 4'd  4; 
        4'd  9 : z = 4'd  2; 
        4'd  1 : z = 4'd  1; 
    endcase
end
endmodule


module gf32inv(
    input       [4:0] a,
    output  reg [4:0] z
);
always @(*)
begin
    case (a)
        5'd  2 : z = 5'd 18; 
        5'd  4 : z = 5'd  9; 
        5'd  8 : z = 5'd 22; 
        5'd 16 : z = 5'd 11; 
        5'd  5 : z = 5'd 23; 
        5'd 10 : z = 5'd 25; 
        5'd 20 : z = 5'd 30; 
        5'd 13 : z = 5'd 15; 
        5'd 26 : z = 5'd 21; 
        5'd 17 : z = 5'd 24; 
        5'd  7 : z = 5'd 12; 
        5'd 14 : z = 5'd  6; 
        5'd 28 : z = 5'd  3; 
        5'd 29 : z = 5'd 19; 
        5'd 31 : z = 5'd 27; 
        5'd 27 : z = 5'd 31; 
        5'd 19 : z = 5'd 29; 
        5'd  3 : z = 5'd 28; 
        5'd  6 : z = 5'd 14; 
        5'd 12 : z = 5'd  7; 
        5'd 24 : z = 5'd 17; 
        5'd 21 : z = 5'd 26; 
        5'd 15 : z = 5'd 13; 
        5'd 30 : z = 5'd 20; 
        5'd 25 : z = 5'd 10; 
        5'd 23 : z = 5'd  5; 
        5'd 11 : z = 5'd 16; 
        5'd 22 : z = 5'd  8; 
        5'd  9 : z = 5'd  4; 
        5'd 18 : z = 5'd  2; 
        5'd  1 : z = 5'd  1; 
    endcase
end
endmodule


module gf128inv(
    input       [6:0] a,
    output  reg [6:0] z
);
always @(*)
begin
    case (a)
        7'd  2 : z = 7'd 68; 
        7'd  4 : z = 7'd 34; 
        7'd  8 : z = 7'd 17; 
        7'd 16 : z = 7'd 76; 
        7'd 32 : z = 7'd 38; 
        7'd 64 : z = 7'd 19; 
        7'd  9 : z = 7'd 77; 
        7'd 18 : z = 7'd 98; 
        7'd 36 : z = 7'd 49; 
        7'd 72 : z = 7'd 92; 
        7'd 25 : z = 7'd 46; 
        7'd 50 : z = 7'd 23; 
        7'd100 : z = 7'd 79; 
        7'd 65 : z = 7'd 99; 
        7'd 11 : z = 7'd117; 
        7'd 22 : z = 7'd126; 
        7'd 44 : z = 7'd 63; 
        7'd 88 : z = 7'd 91; 
        7'd 57 : z = 7'd105; 
        7'd114 : z = 7'd112; 
        7'd109 : z = 7'd 56; 
        7'd 83 : z = 7'd 28; 
        7'd 47 : z = 7'd 14; 
        7'd 94 : z = 7'd  7; 
        7'd 53 : z = 7'd 71; 
        7'd106 : z = 7'd103; 
        7'd 93 : z = 7'd119; 
        7'd 51 : z = 7'd127; 
        7'd102 : z = 7'd123; 
        7'd 69 : z = 7'd121; 
        7'd  3 : z = 7'd120; 
        7'd  6 : z = 7'd 60; 
        7'd 12 : z = 7'd 30; 
        7'd 24 : z = 7'd 15; 
        7'd 48 : z = 7'd 67; 
        7'd 96 : z = 7'd101; 
        7'd 73 : z = 7'd118; 
        7'd 27 : z = 7'd 59; 
        7'd 54 : z = 7'd 89; 
        7'd108 : z = 7'd104; 
        7'd 81 : z = 7'd 52; 
        7'd 43 : z = 7'd 26; 
        7'd 86 : z = 7'd 13; 
        7'd 37 : z = 7'd 66; 
        7'd 74 : z = 7'd 33; 
        7'd 29 : z = 7'd 84; 
        7'd 58 : z = 7'd 42; 
        7'd116 : z = 7'd 21; 
        7'd 97 : z = 7'd 78; 
        7'd 75 : z = 7'd 39; 
        7'd 31 : z = 7'd 87; 
        7'd 62 : z = 7'd111; 
        7'd124 : z = 7'd115; 
        7'd113 : z = 7'd125; 
        7'd107 : z = 7'd122; 
        7'd 95 : z = 7'd 61; 
        7'd 55 : z = 7'd 90; 
        7'd110 : z = 7'd 45; 
        7'd 85 : z = 7'd 82; 
        7'd 35 : z = 7'd 41; 
        7'd 70 : z = 7'd 80; 
        7'd  5 : z = 7'd 40; 
        7'd 10 : z = 7'd 20; 
        7'd 20 : z = 7'd 10; 
        7'd 40 : z = 7'd  5; 
        7'd 80 : z = 7'd 70; 
        7'd 41 : z = 7'd 35; 
        7'd 82 : z = 7'd 85; 
        7'd 45 : z = 7'd110; 
        7'd 90 : z = 7'd 55; 
        7'd 61 : z = 7'd 95; 
        7'd122 : z = 7'd107; 
        7'd125 : z = 7'd113; 
        7'd115 : z = 7'd124; 
        7'd111 : z = 7'd 62; 
        7'd 87 : z = 7'd 31; 
        7'd 39 : z = 7'd 75; 
        7'd 78 : z = 7'd 97; 
        7'd 21 : z = 7'd116; 
        7'd 42 : z = 7'd 58; 
        7'd 84 : z = 7'd 29; 
        7'd 33 : z = 7'd 74; 
        7'd 66 : z = 7'd 37; 
        7'd 13 : z = 7'd 86; 
        7'd 26 : z = 7'd 43; 
        7'd 52 : z = 7'd 81; 
        7'd104 : z = 7'd108; 
        7'd 89 : z = 7'd 54; 
        7'd 59 : z = 7'd 27; 
        7'd118 : z = 7'd 73; 
        7'd101 : z = 7'd 96; 
        7'd 67 : z = 7'd 48; 
        7'd 15 : z = 7'd 24; 
        7'd 30 : z = 7'd 12; 
        7'd 60 : z = 7'd  6; 
        7'd120 : z = 7'd  3; 
        7'd121 : z = 7'd 69; 
        7'd123 : z = 7'd102; 
        7'd127 : z = 7'd 51; 
        7'd119 : z = 7'd 93; 
        7'd103 : z = 7'd106; 
        7'd 71 : z = 7'd 53; 
        7'd  7 : z = 7'd 94; 
        7'd 14 : z = 7'd 47; 
        7'd 28 : z = 7'd 83; 
        7'd 56 : z = 7'd109; 
        7'd112 : z = 7'd114; 
        7'd105 : z = 7'd 57; 
        7'd 91 : z = 7'd 88; 
        7'd 63 : z = 7'd 44; 
        7'd126 : z = 7'd 22; 
        7'd117 : z = 7'd 11; 
        7'd 99 : z = 7'd 65; 
        7'd 79 : z = 7'd100; 
        7'd 23 : z = 7'd 50; 
        7'd 46 : z = 7'd 25; 
        7'd 92 : z = 7'd 72; 
        7'd 49 : z = 7'd 36; 
        7'd 98 : z = 7'd 18; 
        7'd 77 : z = 7'd  9; 
        7'd 19 : z = 7'd 64; 
        7'd 38 : z = 7'd 32; 
        7'd 76 : z = 7'd 16; 
        7'd 17 : z = 7'd  8; 
        7'd 34 : z = 7'd  4; 
        7'd 68 : z = 7'd  2; 
        7'd  1 : z = 7'd  1; 
    endcase
end
endmodule


module gf64inv(
    input       [5:0] a,
    output  reg [5:0] z
);
always @(*)
begin
    case (a)
        6'd  2 : z = 6'd 33; 
        6'd  4 : z = 6'd 49; 
        6'd  8 : z = 6'd 57; 
        6'd 16 : z = 6'd 61; 
        6'd 32 : z = 6'd 63; 
        6'd  3 : z = 6'd 62; 
        6'd  6 : z = 6'd 31; 
        6'd 12 : z = 6'd 46; 
        6'd 24 : z = 6'd 23; 
        6'd 48 : z = 6'd 42; 
        6'd 35 : z = 6'd 21; 
        6'd  5 : z = 6'd 43; 
        6'd 10 : z = 6'd 52; 
        6'd 20 : z = 6'd 26; 
        6'd 40 : z = 6'd 13; 
        6'd 19 : z = 6'd 39; 
        6'd 38 : z = 6'd 50; 
        6'd 15 : z = 6'd 25; 
        6'd 30 : z = 6'd 45; 
        6'd 60 : z = 6'd 55; 
        6'd 59 : z = 6'd 58; 
        6'd 53 : z = 6'd 29; 
        6'd 41 : z = 6'd 47; 
        6'd 17 : z = 6'd 54; 
        6'd 34 : z = 6'd 27; 
        6'd  7 : z = 6'd 44; 
        6'd 14 : z = 6'd 22; 
        6'd 28 : z = 6'd 11; 
        6'd 56 : z = 6'd 36; 
        6'd 51 : z = 6'd 18; 
        6'd 37 : z = 6'd  9; 
        6'd  9 : z = 6'd 37; 
        6'd 18 : z = 6'd 51; 
        6'd 36 : z = 6'd 56; 
        6'd 11 : z = 6'd 28; 
        6'd 22 : z = 6'd 14; 
        6'd 44 : z = 6'd  7; 
        6'd 27 : z = 6'd 34; 
        6'd 54 : z = 6'd 17; 
        6'd 47 : z = 6'd 41; 
        6'd 29 : z = 6'd 53; 
        6'd 58 : z = 6'd 59; 
        6'd 55 : z = 6'd 60; 
        6'd 45 : z = 6'd 30; 
        6'd 25 : z = 6'd 15; 
        6'd 50 : z = 6'd 38; 
        6'd 39 : z = 6'd 19; 
        6'd 13 : z = 6'd 40; 
        6'd 26 : z = 6'd 20; 
        6'd 52 : z = 6'd 10; 
        6'd 43 : z = 6'd  5; 
        6'd 21 : z = 6'd 35; 
        6'd 42 : z = 6'd 48; 
        6'd 23 : z = 6'd 24; 
        6'd 46 : z = 6'd 12; 
        6'd 31 : z = 6'd  6; 
        6'd 62 : z = 6'd  3; 
        6'd 63 : z = 6'd 32; 
        6'd 61 : z = 6'd 16; 
        6'd 57 : z = 6'd  8; 
        6'd 49 : z = 6'd  4; 
        6'd 33 : z = 6'd  2; 
        6'd  1 : z = 6'd  1; 
    endcase
end
endmodule


module gf256inv(
    input       [7:0] a,
    output  reg [7:0] z
);
always @(*)
begin
    case (a)
        8'd  2 : z = 8'd142; 
        8'd  4 : z = 8'd 71; 
        8'd  8 : z = 8'd173; 
        8'd 16 : z = 8'd216; 
        8'd 32 : z = 8'd108; 
        8'd 64 : z = 8'd 54; 
        8'd128 : z = 8'd 27; 
        8'd 29 : z = 8'd131; 
        8'd 58 : z = 8'd207; 
        8'd116 : z = 8'd233; 
        8'd232 : z = 8'd250; 
        8'd205 : z = 8'd125; 
        8'd135 : z = 8'd176; 
        8'd 19 : z = 8'd 88; 
        8'd 38 : z = 8'd 44; 
        8'd 76 : z = 8'd 22; 
        8'd152 : z = 8'd 11; 
        8'd 45 : z = 8'd139; 
        8'd 90 : z = 8'd203; 
        8'd180 : z = 8'd235; 
        8'd117 : z = 8'd251; 
        8'd234 : z = 8'd243; 
        8'd201 : z = 8'd247; 
        8'd143 : z = 8'd245; 
        8'd  3 : z = 8'd244; 
        8'd  6 : z = 8'd122; 
        8'd 12 : z = 8'd 61; 
        8'd 24 : z = 8'd144; 
        8'd 48 : z = 8'd 72; 
        8'd 96 : z = 8'd 36; 
        8'd192 : z = 8'd 18; 
        8'd157 : z = 8'd  9; 
        8'd 39 : z = 8'd138; 
        8'd 78 : z = 8'd 69; 
        8'd156 : z = 8'd172; 
        8'd 37 : z = 8'd 86; 
        8'd 74 : z = 8'd 43; 
        8'd148 : z = 8'd155; 
        8'd 53 : z = 8'd195; 
        8'd106 : z = 8'd239; 
        8'd212 : z = 8'd249; 
        8'd181 : z = 8'd242; 
        8'd119 : z = 8'd121; 
        8'd238 : z = 8'd178; 
        8'd193 : z = 8'd 89; 
        8'd159 : z = 8'd162; 
        8'd 35 : z = 8'd 81; 
        8'd 70 : z = 8'd166; 
        8'd140 : z = 8'd 83; 
        8'd  5 : z = 8'd167; 
        8'd 10 : z = 8'd221; 
        8'd 20 : z = 8'd224; 
        8'd 40 : z = 8'd112; 
        8'd 80 : z = 8'd 56; 
        8'd160 : z = 8'd 28; 
        8'd 93 : z = 8'd 14; 
        8'd186 : z = 8'd  7; 
        8'd105 : z = 8'd141; 
        8'd210 : z = 8'd200; 
        8'd185 : z = 8'd100; 
        8'd111 : z = 8'd 50; 
        8'd222 : z = 8'd 25; 
        8'd161 : z = 8'd130; 
        8'd 95 : z = 8'd 65; 
        8'd190 : z = 8'd174; 
        8'd 97 : z = 8'd 87; 
        8'd194 : z = 8'd165; 
        8'd153 : z = 8'd220; 
        8'd 47 : z = 8'd110; 
        8'd 94 : z = 8'd 55; 
        8'd188 : z = 8'd149; 
        8'd101 : z = 8'd196; 
        8'd202 : z = 8'd 98; 
        8'd137 : z = 8'd 49; 
        8'd 15 : z = 8'd150; 
        8'd 30 : z = 8'd 75; 
        8'd 60 : z = 8'd171; 
        8'd120 : z = 8'd219; 
        8'd240 : z = 8'd227; 
        8'd253 : z = 8'd255; 
        8'd231 : z = 8'd241; 
        8'd211 : z = 8'd246; 
        8'd187 : z = 8'd123; 
        8'd107 : z = 8'd179; 
        8'd214 : z = 8'd215; 
        8'd177 : z = 8'd229; 
        8'd127 : z = 8'd252; 
        8'd254 : z = 8'd126; 
        8'd225 : z = 8'd 63; 
        8'd223 : z = 8'd145; 
        8'd163 : z = 8'd198; 
        8'd 91 : z = 8'd 99; 
        8'd182 : z = 8'd191; 
        8'd113 : z = 8'd209; 
        8'd226 : z = 8'd230; 
        8'd217 : z = 8'd115; 
        8'd175 : z = 8'd183; 
        8'd 67 : z = 8'd213; 
        8'd134 : z = 8'd228; 
        8'd 17 : z = 8'd114; 
        8'd 34 : z = 8'd 57; 
        8'd 68 : z = 8'd146; 
        8'd136 : z = 8'd 73; 
        8'd 13 : z = 8'd170; 
        8'd 26 : z = 8'd 85; 
        8'd 52 : z = 8'd164; 
        8'd104 : z = 8'd 82; 
        8'd208 : z = 8'd 41; 
        8'd189 : z = 8'd154; 
        8'd103 : z = 8'd 77; 
        8'd206 : z = 8'd168; 
        8'd129 : z = 8'd 84; 
        8'd 31 : z = 8'd 42; 
        8'd 62 : z = 8'd 21; 
        8'd124 : z = 8'd132; 
        8'd248 : z = 8'd 66; 
        8'd237 : z = 8'd 33; 
        8'd199 : z = 8'd158; 
        8'd147 : z = 8'd 79; 
        8'd 59 : z = 8'd169; 
        8'd118 : z = 8'd218; 
        8'd236 : z = 8'd109; 
        8'd197 : z = 8'd184; 
        8'd151 : z = 8'd 92; 
        8'd 51 : z = 8'd 46; 
        8'd102 : z = 8'd 23; 
        8'd204 : z = 8'd133; 
        8'd133 : z = 8'd204; 
        8'd 23 : z = 8'd102; 
        8'd 46 : z = 8'd 51; 
        8'd 92 : z = 8'd151; 
        8'd184 : z = 8'd197; 
        8'd109 : z = 8'd236; 
        8'd218 : z = 8'd118; 
        8'd169 : z = 8'd 59; 
        8'd 79 : z = 8'd147; 
        8'd158 : z = 8'd199; 
        8'd 33 : z = 8'd237; 
        8'd 66 : z = 8'd248; 
        8'd132 : z = 8'd124; 
        8'd 21 : z = 8'd 62; 
        8'd 42 : z = 8'd 31; 
        8'd 84 : z = 8'd129; 
        8'd168 : z = 8'd206; 
        8'd 77 : z = 8'd103; 
        8'd154 : z = 8'd189; 
        8'd 41 : z = 8'd208; 
        8'd 82 : z = 8'd104; 
        8'd164 : z = 8'd 52; 
        8'd 85 : z = 8'd 26; 
        8'd170 : z = 8'd 13; 
        8'd 73 : z = 8'd136; 
        8'd146 : z = 8'd 68; 
        8'd 57 : z = 8'd 34; 
        8'd114 : z = 8'd 17; 
        8'd228 : z = 8'd134; 
        8'd213 : z = 8'd 67; 
        8'd183 : z = 8'd175; 
        8'd115 : z = 8'd217; 
        8'd230 : z = 8'd226; 
        8'd209 : z = 8'd113; 
        8'd191 : z = 8'd182; 
        8'd 99 : z = 8'd 91; 
        8'd198 : z = 8'd163; 
        8'd145 : z = 8'd223; 
        8'd 63 : z = 8'd225; 
        8'd126 : z = 8'd254; 
        8'd252 : z = 8'd127; 
        8'd229 : z = 8'd177; 
        8'd215 : z = 8'd214; 
        8'd179 : z = 8'd107; 
        8'd123 : z = 8'd187; 
        8'd246 : z = 8'd211; 
        8'd241 : z = 8'd231; 
        8'd255 : z = 8'd253; 
        8'd227 : z = 8'd240; 
        8'd219 : z = 8'd120; 
        8'd171 : z = 8'd 60; 
        8'd 75 : z = 8'd 30; 
        8'd150 : z = 8'd 15; 
        8'd 49 : z = 8'd137; 
        8'd 98 : z = 8'd202; 
        8'd196 : z = 8'd101; 
        8'd149 : z = 8'd188; 
        8'd 55 : z = 8'd 94; 
        8'd110 : z = 8'd 47; 
        8'd220 : z = 8'd153; 
        8'd165 : z = 8'd194; 
        8'd 87 : z = 8'd 97; 
        8'd174 : z = 8'd190; 
        8'd 65 : z = 8'd 95; 
        8'd130 : z = 8'd161; 
        8'd 25 : z = 8'd222; 
        8'd 50 : z = 8'd111; 
        8'd100 : z = 8'd185; 
        8'd200 : z = 8'd210; 
        8'd141 : z = 8'd105; 
        8'd  7 : z = 8'd186; 
        8'd 14 : z = 8'd 93; 
        8'd 28 : z = 8'd160; 
        8'd 56 : z = 8'd 80; 
        8'd112 : z = 8'd 40; 
        8'd224 : z = 8'd 20; 
        8'd221 : z = 8'd 10; 
        8'd167 : z = 8'd  5; 
        8'd 83 : z = 8'd140; 
        8'd166 : z = 8'd 70; 
        8'd 81 : z = 8'd 35; 
        8'd162 : z = 8'd159; 
        8'd 89 : z = 8'd193; 
        8'd178 : z = 8'd238; 
        8'd121 : z = 8'd119; 
        8'd242 : z = 8'd181; 
        8'd249 : z = 8'd212; 
        8'd239 : z = 8'd106; 
        8'd195 : z = 8'd 53; 
        8'd155 : z = 8'd148; 
        8'd 43 : z = 8'd 74; 
        8'd 86 : z = 8'd 37; 
        8'd172 : z = 8'd156; 
        8'd 69 : z = 8'd 78; 
        8'd138 : z = 8'd 39; 
        8'd  9 : z = 8'd157; 
        8'd 18 : z = 8'd192; 
        8'd 36 : z = 8'd 96; 
        8'd 72 : z = 8'd 48; 
        8'd144 : z = 8'd 24; 
        8'd 61 : z = 8'd 12; 
        8'd122 : z = 8'd  6; 
        8'd244 : z = 8'd  3; 
        8'd245 : z = 8'd143; 
        8'd247 : z = 8'd201; 
        8'd243 : z = 8'd234; 
        8'd251 : z = 8'd117; 
        8'd235 : z = 8'd180; 
        8'd203 : z = 8'd 90; 
        8'd139 : z = 8'd 45; 
        8'd 11 : z = 8'd152; 
        8'd 22 : z = 8'd 76; 
        8'd 44 : z = 8'd 38; 
        8'd 88 : z = 8'd 19; 
        8'd176 : z = 8'd135; 
        8'd125 : z = 8'd205; 
        8'd250 : z = 8'd232; 
        8'd233 : z = 8'd116; 
        8'd207 : z = 8'd 58; 
        8'd131 : z = 8'd 29; 
        8'd 27 : z = 8'd128; 
        8'd 54 : z = 8'd 64; 
        8'd108 : z = 8'd 32; 
        8'd216 : z = 8'd 16; 
        8'd173 : z = 8'd  8; 
        8'd 71 : z = 8'd  4; 
        8'd142 : z = 8'd  2; 
        8'd  1 : z = 8'd  1; 

    endcase
end
endmodule

/*
`timescale 1ns/100ps
module gf256inv(
       input [7:0] a,
       output reg [7:0] z
       );
                                                                             
always @( * ) begin
  case (a) 
	8'h00: z = 8'h00;   //actually, there are no inverse for 0.
	8'h02: z = 8'h8e;   //a^1
	8'h04: z = 8'h47;   //a^2
	8'h08: z = 8'had;
	8'h10: z = 8'hd8;
	8'h20: z = 8'h6c;
	8'h40: z = 8'h36;
	8'h80: z = 8'h1b;
	8'h1d: z = 8'h83;
	8'h3a: z = 8'hcf;
	8'h74: z = 8'he9;
	8'he8: z = 8'hfa;
	8'hcd: z = 8'h7d;
	8'h87: z = 8'hb0;
	8'h13: z = 8'h58;
	8'h26: z = 8'h2c;
	8'h4c: z = 8'h16;
	8'h98: z = 8'h0b;
	8'h2d: z = 8'h8b;
	8'h5a: z = 8'hcb;
	8'hb4: z = 8'heb;
	8'h75: z = 8'hfb;
	8'hea: z = 8'hf3;
	8'hc9: z = 8'hf7;
	8'h8f: z = 8'hf5;
	8'h03: z = 8'hf4;
	8'h06: z = 8'h7a;
	8'h0c: z = 8'h3d;
	8'h18: z = 8'h90;
	8'h30: z = 8'h48;
	8'h60: z = 8'h24;
	8'hc0: z = 8'h12;
	8'h9d: z = 8'h09;
	8'h27: z = 8'h8a;
	8'h4e: z = 8'h45;
	8'h9c: z = 8'hac;
	8'h25: z = 8'h56;
	8'h4a: z = 8'h2b;
	8'h94: z = 8'h9b;
	8'h35: z = 8'hc3;
	8'h6a: z = 8'hef;
	8'hd4: z = 8'hf9;
	8'hb5: z = 8'hf2;
	8'h77: z = 8'h79;
	8'hee: z = 8'hb2;
	8'hc1: z = 8'h59;
	8'h9f: z = 8'ha2;
	8'h23: z = 8'h51;
	8'h46: z = 8'ha6;
	8'h8c: z = 8'h53;
	8'h05: z = 8'ha7;
	8'h0a: z = 8'hdd;
	8'h14: z = 8'he0;
	8'h28: z = 8'h70;
	8'h50: z = 8'h38;
	8'ha0: z = 8'h1c;
	8'h5d: z = 8'h0e;
	8'hba: z = 8'h07;
	8'h69: z = 8'h8d;
	8'hd2: z = 8'hc8;
	8'hb9: z = 8'h64;
	8'h6f: z = 8'h32;
	8'hde: z = 8'h19;
	8'ha1: z = 8'h82;
	8'h5f: z = 8'h41;
	8'hbe: z = 8'hae;
	8'h61: z = 8'h57;
	8'hc2: z = 8'ha5;
	8'h99: z = 8'hdc;
	8'h2f: z = 8'h6e;
	8'h5e: z = 8'h37;
	8'hbc: z = 8'h95;
	8'h65: z = 8'hc4;
	8'hca: z = 8'h62;
	8'h89: z = 8'h31;
	8'h0f: z = 8'h96;
	8'h1e: z = 8'h4b;
	8'h3c: z = 8'hab;
	8'h78: z = 8'hdb;
	8'hf0: z = 8'he3;
	8'hfd: z = 8'hff;
	8'he7: z = 8'hf1;
	8'hd3: z = 8'hf6;
	8'hbb: z = 8'h7b;
	8'h6b: z = 8'hb3;
	8'hd6: z = 8'hd7;
	8'hb1: z = 8'he5;
	8'h7f: z = 8'hfc;
	8'hfe: z = 8'h7e;
	8'he1: z = 8'h3f;
	8'hdf: z = 8'h91;
	8'ha3: z = 8'hc6;
	8'h5b: z = 8'h63;
	8'hb6: z = 8'hbf;
	8'h71: z = 8'hd1;
	8'he2: z = 8'he6;
	8'hd9: z = 8'h73;
	8'haf: z = 8'hb7;
	8'h43: z = 8'hd5;
	8'h86: z = 8'he4;
	8'h11: z = 8'h72;
	8'h22: z = 8'h39;
	8'h44: z = 8'h92;
	8'h88: z = 8'h49;
	8'h0d: z = 8'haa;
	8'h1a: z = 8'h55;
	8'h34: z = 8'ha4;
	8'h68: z = 8'h52;
	8'hd0: z = 8'h29;
	8'hbd: z = 8'h9a;
	8'h67: z = 8'h4d;
	8'hce: z = 8'ha8;
	8'h81: z = 8'h54;
	8'h1f: z = 8'h2a;
	8'h3e: z = 8'h15;
	8'h7c: z = 8'h84;
	8'hf8: z = 8'h42;
	8'hed: z = 8'h21;
	8'hc7: z = 8'h9e;
	8'h93: z = 8'h4f;
	8'h3b: z = 8'ha9;
	8'h76: z = 8'hda;
	8'hec: z = 8'h6d;
	8'hc5: z = 8'hb8;
	8'h97: z = 8'h5c;
	8'h33: z = 8'h2e;
	8'h66: z = 8'h17;
	8'hcc: z = 8'h85;
	8'h85: z = 8'hcc;
	8'h17: z = 8'h66;
	8'h2e: z = 8'h33;
	8'h5c: z = 8'h97;
	8'hb8: z = 8'hc5;
	8'h6d: z = 8'hec;
	8'hda: z = 8'h76;
	8'ha9: z = 8'h3b;
	8'h4f: z = 8'h93;
	8'h9e: z = 8'hc7;
	8'h21: z = 8'hed;
	8'h42: z = 8'hf8;
	8'h84: z = 8'h7c;
	8'h15: z = 8'h3e;
	8'h2a: z = 8'h1f;
	8'h54: z = 8'h81;
	8'ha8: z = 8'hce;
	8'h4d: z = 8'h67;
	8'h9a: z = 8'hbd;
	8'h29: z = 8'hd0;
	8'h52: z = 8'h68;
	8'ha4: z = 8'h34;
	8'h55: z = 8'h1a;
	8'haa: z = 8'h0d;
	8'h49: z = 8'h88;
	8'h92: z = 8'h44;
	8'h39: z = 8'h22;
	8'h72: z = 8'h11;
	8'he4: z = 8'h86;
	8'hd5: z = 8'h43;
	8'hb7: z = 8'haf;
	8'h73: z = 8'hd9;
	8'he6: z = 8'he2;
	8'hd1: z = 8'h71;
	8'hbf: z = 8'hb6;
	8'h63: z = 8'h5b;
	8'hc6: z = 8'ha3;
	8'h91: z = 8'hdf;
	8'h3f: z = 8'he1;
	8'h7e: z = 8'hfe;
	8'hfc: z = 8'h7f;
	8'he5: z = 8'hb1;
	8'hd7: z = 8'hd6;
	8'hb3: z = 8'h6b;
	8'h7b: z = 8'hbb;
	8'hf6: z = 8'hd3;
	8'hf1: z = 8'he7;
	8'hff: z = 8'hfd;
	8'he3: z = 8'hf0;
	8'hdb: z = 8'h78;
	8'hab: z = 8'h3c;
	8'h4b: z = 8'h1e;
	8'h96: z = 8'h0f;
	8'h31: z = 8'h89;
	8'h62: z = 8'hca;
	8'hc4: z = 8'h65;
	8'h95: z = 8'hbc;
	8'h37: z = 8'h5e;
	8'h6e: z = 8'h2f;
	8'hdc: z = 8'h99;
	8'ha5: z = 8'hc2;
	8'h57: z = 8'h61;
	8'hae: z = 8'hbe;
	8'h41: z = 8'h5f;
	8'h82: z = 8'ha1;
	8'h19: z = 8'hde;
	8'h32: z = 8'h6f;
	8'h64: z = 8'hb9;
	8'hc8: z = 8'hd2;
	8'h8d: z = 8'h69;
	8'h07: z = 8'hba;
	8'h0e: z = 8'h5d;
	8'h1c: z = 8'ha0;
	8'h38: z = 8'h50;
	8'h70: z = 8'h28;
	8'he0: z = 8'h14;
	8'hdd: z = 8'h0a;
	8'ha7: z = 8'h05;
	8'h53: z = 8'h8c;
	8'ha6: z = 8'h46;
	8'h51: z = 8'h23;
	8'ha2: z = 8'h9f;
	8'h59: z = 8'hc1;
	8'hb2: z = 8'hee;
	8'h79: z = 8'h77;
	8'hf2: z = 8'hb5;
	8'hf9: z = 8'hd4;
	8'hef: z = 8'h6a;
	8'hc3: z = 8'h35;
	8'h9b: z = 8'h94;
	8'h2b: z = 8'h4a;
	8'h56: z = 8'h25;
	8'hac: z = 8'h9c;
	8'h45: z = 8'h4e;
	8'h8a: z = 8'h27;
	8'h09: z = 8'h9d;
	8'h12: z = 8'hc0;
	8'h24: z = 8'h60;
	8'h48: z = 8'h30;
	8'h90: z = 8'h18;
	8'h3d: z = 8'h0c;
	8'h7a: z = 8'h06;
	8'hf4: z = 8'h03;
	8'hf5: z = 8'h8f;
	8'hf7: z = 8'hc9;
	8'hf3: z = 8'hea;
	8'hfb: z = 8'h75;
	8'heb: z = 8'hb4;
	8'hcb: z = 8'h5a;
	8'h8b: z = 8'h2d;
	8'h0b: z = 8'h98;
	8'h16: z = 8'h4c;
	8'h2c: z = 8'h26;
	8'h58: z = 8'h13;
	8'hb0: z = 8'h87;
	8'h7d: z = 8'hcd;
	8'hfa: z = 8'he8;
	8'he9: z = 8'h74;
	8'hcf: z = 8'h3a;
	8'h83: z = 8'h1d;
	8'h1b: z = 8'h80;
	8'h36: z = 8'h40;
	8'h6c: z = 8'h20;
	8'hd8: z = 8'h10;
	8'had: z = 8'h08;
	8'h47: z = 8'h04;
	8'h8e: z = 8'h02;
	8'h01: z = 8'h01;
endcase
end


endmodule

*/