// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gZip_cu_stream_to_gmem_unsigned_short_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        out_V_2,
        out_V_2_ap_vld,
        m_axi_out_V_AWVALID,
        m_axi_out_V_AWREADY,
        m_axi_out_V_AWADDR,
        m_axi_out_V_AWID,
        m_axi_out_V_AWLEN,
        m_axi_out_V_AWSIZE,
        m_axi_out_V_AWBURST,
        m_axi_out_V_AWLOCK,
        m_axi_out_V_AWCACHE,
        m_axi_out_V_AWPROT,
        m_axi_out_V_AWQOS,
        m_axi_out_V_AWREGION,
        m_axi_out_V_AWUSER,
        m_axi_out_V_WVALID,
        m_axi_out_V_WREADY,
        m_axi_out_V_WDATA,
        m_axi_out_V_WSTRB,
        m_axi_out_V_WLAST,
        m_axi_out_V_WID,
        m_axi_out_V_WUSER,
        m_axi_out_V_ARVALID,
        m_axi_out_V_ARREADY,
        m_axi_out_V_ARADDR,
        m_axi_out_V_ARID,
        m_axi_out_V_ARLEN,
        m_axi_out_V_ARSIZE,
        m_axi_out_V_ARBURST,
        m_axi_out_V_ARLOCK,
        m_axi_out_V_ARCACHE,
        m_axi_out_V_ARPROT,
        m_axi_out_V_ARQOS,
        m_axi_out_V_ARREGION,
        m_axi_out_V_ARUSER,
        m_axi_out_V_RVALID,
        m_axi_out_V_RREADY,
        m_axi_out_V_RDATA,
        m_axi_out_V_RLAST,
        m_axi_out_V_RID,
        m_axi_out_V_RUSER,
        m_axi_out_V_RRESP,
        m_axi_out_V_BVALID,
        m_axi_out_V_BREADY,
        m_axi_out_V_BRESP,
        m_axi_out_V_BID,
        m_axi_out_V_BUSER,
        out_V_offset_dout,
        out_V_offset_empty_n,
        out_V_offset_read,
        inStream_V_V_dout,
        inStream_V_V_empty_n,
        inStream_V_V_read,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_pp0_stage0 = 10'd16;
parameter    ap_ST_fsm_state8 = 10'd32;
parameter    ap_ST_fsm_state9 = 10'd64;
parameter    ap_ST_fsm_state10 = 10'd128;
parameter    ap_ST_fsm_state11 = 10'd256;
parameter    ap_ST_fsm_state12 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] out_V_2;
output   out_V_2_ap_vld;
output   m_axi_out_V_AWVALID;
input   m_axi_out_V_AWREADY;
output  [63:0] m_axi_out_V_AWADDR;
output  [0:0] m_axi_out_V_AWID;
output  [31:0] m_axi_out_V_AWLEN;
output  [2:0] m_axi_out_V_AWSIZE;
output  [1:0] m_axi_out_V_AWBURST;
output  [1:0] m_axi_out_V_AWLOCK;
output  [3:0] m_axi_out_V_AWCACHE;
output  [2:0] m_axi_out_V_AWPROT;
output  [3:0] m_axi_out_V_AWQOS;
output  [3:0] m_axi_out_V_AWREGION;
output  [0:0] m_axi_out_V_AWUSER;
output   m_axi_out_V_WVALID;
input   m_axi_out_V_WREADY;
output  [511:0] m_axi_out_V_WDATA;
output  [63:0] m_axi_out_V_WSTRB;
output   m_axi_out_V_WLAST;
output  [0:0] m_axi_out_V_WID;
output  [0:0] m_axi_out_V_WUSER;
output   m_axi_out_V_ARVALID;
input   m_axi_out_V_ARREADY;
output  [63:0] m_axi_out_V_ARADDR;
output  [0:0] m_axi_out_V_ARID;
output  [31:0] m_axi_out_V_ARLEN;
output  [2:0] m_axi_out_V_ARSIZE;
output  [1:0] m_axi_out_V_ARBURST;
output  [1:0] m_axi_out_V_ARLOCK;
output  [3:0] m_axi_out_V_ARCACHE;
output  [2:0] m_axi_out_V_ARPROT;
output  [3:0] m_axi_out_V_ARQOS;
output  [3:0] m_axi_out_V_ARREGION;
output  [0:0] m_axi_out_V_ARUSER;
input   m_axi_out_V_RVALID;
output   m_axi_out_V_RREADY;
input  [511:0] m_axi_out_V_RDATA;
input   m_axi_out_V_RLAST;
input  [0:0] m_axi_out_V_RID;
input  [0:0] m_axi_out_V_RUSER;
input  [1:0] m_axi_out_V_RRESP;
input   m_axi_out_V_BVALID;
output   m_axi_out_V_BREADY;
input  [1:0] m_axi_out_V_BRESP;
input  [0:0] m_axi_out_V_BID;
input  [0:0] m_axi_out_V_BUSER;
input  [57:0] out_V_offset_dout;
input   out_V_offset_empty_n;
output   out_V_offset_read;
input  [511:0] inStream_V_V_dout;
input   inStream_V_V_empty_n;
output   inStream_V_V_read;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] out_V_2;
reg out_V_2_ap_vld;
reg m_axi_out_V_AWVALID;
reg m_axi_out_V_WVALID;
reg m_axi_out_V_BREADY;
reg out_V_offset_read;
reg inStream_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_V_blk_n_AW;
wire    ap_CS_fsm_state4;
reg    out_V_blk_n_W;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_i_reg_311;
reg   [0:0] exitcond_i_i_reg_311_pp0_iter1_reg;
reg    out_V_blk_n_B;
wire    ap_CS_fsm_state12;
reg    out_V_offset_blk_n;
reg    inStream_V_V_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] ap_phi_mux_size_i_i_phi_fu_146_p4;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg   [26:0] i_i_i_reg_165;
reg   [57:0] out_V_offset_read_reg_272;
reg    ap_block_state1;
wire   [31:0] size_fu_176_p1;
reg   [31:0] size_reg_277;
reg    ap_block_state2;
wire   [31:0] total_size_fu_180_p2;
reg   [31:0] total_size_reg_284;
wire   [26:0] sizeInWord_fu_216_p3;
reg   [26:0] sizeInWord_reg_289;
wire    ap_CS_fsm_state3;
wire   [58:0] sum_i_i_fu_231_p2;
reg   [58:0] sum_i_i_reg_295;
wire   [31:0] sizeInWord_cast2_i_i_fu_237_p1;
reg   [31:0] sizeInWord_cast2_i_i_reg_300;
reg    ap_sig_ioackin_m_axi_out_V_AWREADY;
wire   [0:0] exitcond_i_i_fu_251_p2;
wire    ap_block_state5_pp0_stage0_iter0;
reg    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
reg    ap_sig_ioackin_m_axi_out_V_WREADY;
reg    ap_block_state7_io;
reg    ap_block_pp0_stage0_11001;
wire   [26:0] i_fu_256_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [511:0] tmp_V_1_reg_320;
wire   [31:0] outIdx_fu_262_p2;
reg   [31:0] outIdx_reg_325;
wire    ap_CS_fsm_state8;
wire   [0:0] phitmp_i_i_fu_267_p2;
reg   [0:0] phitmp_i_i_reg_330;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state5;
reg   [31:0] outIdx_i_i_reg_130;
reg   [0:0] size_i_i_reg_142;
reg   [31:0] total_size_i_i_reg_153;
wire   [63:0] sum_cast_i_i_fu_241_p1;
reg    ap_reg_ioackin_m_axi_out_V_AWREADY;
reg    ap_reg_ioackin_m_axi_out_V_WREADY;
reg    ap_block_pp0_stage0_01001;
reg   [31:0] out_V_2_preg;
wire   [31:0] tmp_1_i_i_fu_191_p2;
wire   [25:0] tmp_2_i_i_fu_196_p4;
wire   [26:0] tmp_2_cast_i_i_fu_206_p1;
wire   [0:0] tmp_i_i_fu_186_p2;
wire   [26:0] tmp_3_i_i_fu_210_p2;
wire   [58:0] tmp_9_cast_i_i_fu_224_p1;
wire   [58:0] out_V_offset_cast7_i_i_fu_228_p1;
reg   [9:0] ap_NS_fsm;
wire    ap_ext_blocking_cur_n;
wire    ap_int_blocking_cur_n;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_reg_ioackin_m_axi_out_V_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_out_V_WREADY = 1'b0;
#0 out_V_2_preg = 32'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state5)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state5);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_out_V_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            if ((ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_out_V_AWREADY <= 1'b0;
            end else if ((m_axi_out_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_out_V_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_out_V_WREADY <= 1'b0;
    end else begin
        if (((exitcond_i_i_reg_311_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            if ((1'b0 == ap_block_pp0_stage0_11001)) begin
                ap_reg_ioackin_m_axi_out_V_WREADY <= 1'b0;
            end else if (((1'b0 == ap_block_pp0_stage0_01001) & (m_axi_out_V_WREADY == 1'b1))) begin
                ap_reg_ioackin_m_axi_out_V_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_2_preg <= 32'd0;
    end else begin
        if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            out_V_2_preg <= total_size_i_i_reg_153;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_fu_251_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_i_i_reg_165 <= i_fu_256_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1))) begin
        i_i_i_reg_165 <= 27'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_out_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        outIdx_i_i_reg_130 <= outIdx_reg_325;
    end else if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        outIdx_i_i_reg_130 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_out_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        size_i_i_reg_142 <= phitmp_i_i_reg_330;
    end else if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_i_i_reg_142 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_out_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        total_size_i_i_reg_153 <= total_size_reg_284;
    end else if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        total_size_i_i_reg_153 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_i_i_reg_311 <= exitcond_i_i_fu_251_p2;
        exitcond_i_i_reg_311_pp0_iter1_reg <= exitcond_i_i_reg_311;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        outIdx_reg_325 <= outIdx_fu_262_p2;
        phitmp_i_i_reg_330 <= phitmp_i_i_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        out_V_offset_read_reg_272 <= out_V_offset_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1))) begin
        sizeInWord_cast2_i_i_reg_300[26 : 0] <= sizeInWord_cast2_i_i_fu_237_p1[26 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sizeInWord_reg_289 <= sizeInWord_fu_216_p3;
        sum_i_i_reg_295 <= sum_i_i_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (1'b1 == ap_CS_fsm_state2) & (size_i_i_reg_142 == 1'd1))) begin
        size_reg_277 <= size_fu_176_p1;
        total_size_reg_284 <= total_size_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_i_reg_311 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_1_reg_320 <= inStream_V_V_dout;
    end
end

always @ (*) begin
    if ((exitcond_i_i_fu_251_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_out_V_AWREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_out_V_AWREADY = m_axi_out_V_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_out_V_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_out_V_WREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_out_V_WREADY = m_axi_out_V_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_out_V_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (size_i_i_reg_142 == 1'd1)) | ((exitcond_i_i_reg_311 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        inStream_V_V_blk_n = inStream_V_V_empty_n;
    end else begin
        inStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((exitcond_i_i_reg_311 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | (~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (1'b1 == ap_CS_fsm_state2) & (size_i_i_reg_142 == 1'd1)))) begin
        inStream_V_V_read = 1'b1;
    end else begin
        inStream_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_out_V_AWREADY == 1'b0) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_out_V_AWVALID = 1'b1;
    end else begin
        m_axi_out_V_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_out_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_out_V_BREADY = 1'b1;
    end else begin
        m_axi_out_V_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_311_pp0_iter1_reg == 1'd0) & (ap_reg_ioackin_m_axi_out_V_WREADY == 1'b0) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_out_V_WVALID = 1'b1;
    end else begin
        m_axi_out_V_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_V_2 = total_size_i_i_reg_153;
    end else begin
        out_V_2 = out_V_2_preg;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_V_2_ap_vld = 1'b1;
    end else begin
        out_V_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_V_blk_n_AW = m_axi_out_V_AWREADY;
    end else begin
        out_V_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        out_V_blk_n_B = m_axi_out_V_BVALID;
    end else begin
        out_V_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_i_reg_311_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        out_V_blk_n_W = m_axi_out_V_WREADY;
    end else begin
        out_V_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        out_V_offset_blk_n = out_V_offset_empty_n;
    end else begin
        out_V_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        out_V_offset_read = 1'b1;
    end else begin
        out_V_offset_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (ap_phi_mux_size_i_i_phi_fu_146_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1)) & (1'b1 == ap_CS_fsm_state2) & (size_i_i_reg_142 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (ap_sig_ioackin_m_axi_out_V_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (exitcond_i_i_fu_251_p2 == 1'd1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (exitcond_i_i_fu_251_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((m_axi_out_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_i_i_reg_311 == 1'd0) & (inStream_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((exitcond_i_i_reg_311 == 1'd0) & (inStream_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_block_state7_io) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((exitcond_i_i_reg_311 == 1'd0) & (inStream_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_block_state7_io) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((out_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((inStream_V_V_empty_n == 1'b0) & (size_i_i_reg_142 == 1'd1));
end

assign ap_block_state5_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter1 = ((exitcond_i_i_reg_311 == 1'd0) & (inStream_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state7_io = ((exitcond_i_i_reg_311_pp0_iter1_reg == 1'd0) & (ap_sig_ioackin_m_axi_out_V_WREADY == 1'b0));
end

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ext_blocking_cur_n = (out_V_blk_n_W & out_V_blk_n_B & out_V_blk_n_AW);

assign ap_ext_blocking_n = (ap_ext_blocking_cur_n & 1'b1);

assign ap_int_blocking_cur_n = (out_V_offset_blk_n & inStream_V_V_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_phi_mux_size_i_i_phi_fu_146_p4 = size_i_i_reg_142;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign exitcond_i_i_fu_251_p2 = ((i_i_i_reg_165 == sizeInWord_reg_289) ? 1'b1 : 1'b0);

assign i_fu_256_p2 = (i_i_i_reg_165 + 27'd1);

assign m_axi_out_V_ARADDR = 64'd0;

assign m_axi_out_V_ARBURST = 2'd0;

assign m_axi_out_V_ARCACHE = 4'd0;

assign m_axi_out_V_ARID = 1'd0;

assign m_axi_out_V_ARLEN = 32'd0;

assign m_axi_out_V_ARLOCK = 2'd0;

assign m_axi_out_V_ARPROT = 3'd0;

assign m_axi_out_V_ARQOS = 4'd0;

assign m_axi_out_V_ARREGION = 4'd0;

assign m_axi_out_V_ARSIZE = 3'd0;

assign m_axi_out_V_ARUSER = 1'd0;

assign m_axi_out_V_ARVALID = 1'b0;

assign m_axi_out_V_AWADDR = sum_cast_i_i_fu_241_p1;

assign m_axi_out_V_AWBURST = 2'd0;

assign m_axi_out_V_AWCACHE = 4'd0;

assign m_axi_out_V_AWID = 1'd0;

assign m_axi_out_V_AWLEN = sizeInWord_reg_289;

assign m_axi_out_V_AWLOCK = 2'd0;

assign m_axi_out_V_AWPROT = 3'd0;

assign m_axi_out_V_AWQOS = 4'd0;

assign m_axi_out_V_AWREGION = 4'd0;

assign m_axi_out_V_AWSIZE = 3'd0;

assign m_axi_out_V_AWUSER = 1'd0;

assign m_axi_out_V_RREADY = 1'b0;

assign m_axi_out_V_WDATA = tmp_V_1_reg_320;

assign m_axi_out_V_WID = 1'd0;

assign m_axi_out_V_WLAST = 1'b0;

assign m_axi_out_V_WSTRB = 64'd18446744073709551615;

assign m_axi_out_V_WUSER = 1'd0;

assign outIdx_fu_262_p2 = (sizeInWord_cast2_i_i_reg_300 + outIdx_i_i_reg_130);

assign out_V_offset_cast7_i_i_fu_228_p1 = out_V_offset_read_reg_272;

assign phitmp_i_i_fu_267_p2 = ((size_reg_277 != 32'd0) ? 1'b1 : 1'b0);

assign sizeInWord_cast2_i_i_fu_237_p1 = sizeInWord_reg_289;

assign sizeInWord_fu_216_p3 = ((tmp_i_i_fu_186_p2[0:0] === 1'b1) ? 27'd0 : tmp_3_i_i_fu_210_p2);

assign size_fu_176_p1 = inStream_V_V_dout[31:0];

assign sum_cast_i_i_fu_241_p1 = sum_i_i_reg_295;

assign sum_i_i_fu_231_p2 = (tmp_9_cast_i_i_fu_224_p1 + out_V_offset_cast7_i_i_fu_228_p1);

assign tmp_1_i_i_fu_191_p2 = ($signed(32'd4294967295) + $signed(size_reg_277));

assign tmp_2_cast_i_i_fu_206_p1 = tmp_2_i_i_fu_196_p4;

assign tmp_2_i_i_fu_196_p4 = {{tmp_1_i_i_fu_191_p2[31:6]}};

assign tmp_3_i_i_fu_210_p2 = (27'd1 + tmp_2_cast_i_i_fu_206_p1);

assign tmp_9_cast_i_i_fu_224_p1 = outIdx_i_i_reg_130;

assign tmp_i_i_fu_186_p2 = ((size_reg_277 == 32'd0) ? 1'b1 : 1'b0);

assign total_size_fu_180_p2 = (size_fu_176_p1 + total_size_i_i_reg_153);

always @ (posedge ap_clk) begin
    sizeInWord_cast2_i_i_reg_300[31:27] <= 5'b00000;
end

endmodule //gZip_cu_stream_to_gmem_unsigned_short_512_s
