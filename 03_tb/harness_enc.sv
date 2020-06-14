`timescale 1ns/1ps

//Read configuration from file which is generated by RM
`include "rs_enc_cfg.svh" 

// `define N_NUM  2**`SYM_BW - 1 
`include "uvm_pkg.sv"  

`include "src_tc_fl_enc.svh" 


module harness_enc;
import uvm_pkg::*;  
`include "uvm_macros.svh"   


`include "../03_tb/test_collection_enc.sv"
`include "../03_tb/rs_encoder_if.sv"  

// clk generate
parameter CLK_PRD = 10;
logic clk = 0;
initial begin
    forever begin
        #(CLK_PRD/2 ) clk = ~clk;
    end
end

//rst generate
parameter dummy_time = 14;
logic rst_n ;
initial begin
    #dummy_time;
    rst_n = 1;
    #CLK_PRD;
    rst_n = 0;
    #(CLK_PRD*1.5);
    rst_n = 1; 
    
end


//interface 
rs_encoder_if u_dut_if();
assign u_dut_if.clk = clk;
assign u_dut_if.rst_n = rst_n;

//DUT inst
 
 
// rs_encoder #(
// .SYM_BW(`SYM_BW),
// .N_NUM(`N_NUM),
// .R_NUM(`R_NUM)
// ) 
// DUT(
// .clk     (u_dut_if.clk     ),
// .rst_n   (u_dut_if.rst_n   ),
// .din_val (u_dut_if.din_val ),
// .din_sop (u_dut_if.din_sop ),
// .din_eop (u_dut_if.din_eop ),
// .din     (u_dut_if.din     ),
// .dout_val(u_dut_if.dout_val),
// .dout_sop(u_dut_if.dout_sop),
// .dout_eop(u_dut_if.dout_eop),
// .dout    (u_dut_if.dout    ),
// .busy    (u_dut_if.busy    )
// );          

rs_enc_ip DUT
(
.clk       (u_dut_if.clk     ),
.rst_n     (u_dut_if.rst_n   ),
.din_val   (u_dut_if.din_val ),
.din_sop   (u_dut_if.din_sop ),
// .din_eop   (u_dut_if.din_eop ),
.din       (u_dut_if.din     ),
.sym_width (u_dut_if.sym_width     ),
.dout_val  (u_dut_if.dout_val),
.dout_sop  (u_dut_if.dout_sop),
.dout_eop  (u_dut_if.dout_eop),
.dout      (u_dut_if.dout    )
// .busy      (u_dut_if.busy    )
);   


 

initial begin

  run_test();
end

// initial begin
// $fsdbDumpfile("wave.fsdb");
// $fsdbDumpvars(0,DUT);
// end  

smp_if #(.DW( `SYM_BW)) u0_smp_if(
.data     (DUT.din),
.data_vld (DUT.din_val),
.clk      (DUT.clk),
.rst_n    (DUT.rst_n),
.smp_en   (1'b1),
.out_file ("DUT_enc/data_encoder_in.txt")
);


smp_if #(.DW( `SYM_BW)) u1_smp_if(
.data     (DUT.dout),
.data_vld (DUT.dout_val),
.clk      (DUT.clk),
.rst_n    (DUT.rst_n),
.smp_en   (1'b1),
.out_file ("DUT_enc/data_encoder_out.txt")
); 


endmodule