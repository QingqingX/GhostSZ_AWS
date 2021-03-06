// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gZip_cu_gzip_Block_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tmp_channel,
        m_axi_encoded_size_AWVALID,
        m_axi_encoded_size_AWREADY,
        m_axi_encoded_size_AWADDR,
        m_axi_encoded_size_AWID,
        m_axi_encoded_size_AWLEN,
        m_axi_encoded_size_AWSIZE,
        m_axi_encoded_size_AWBURST,
        m_axi_encoded_size_AWLOCK,
        m_axi_encoded_size_AWCACHE,
        m_axi_encoded_size_AWPROT,
        m_axi_encoded_size_AWQOS,
        m_axi_encoded_size_AWREGION,
        m_axi_encoded_size_AWUSER,
        m_axi_encoded_size_WVALID,
        m_axi_encoded_size_WREADY,
        m_axi_encoded_size_WDATA,
        m_axi_encoded_size_WSTRB,
        m_axi_encoded_size_WLAST,
        m_axi_encoded_size_WID,
        m_axi_encoded_size_WUSER,
        m_axi_encoded_size_ARVALID,
        m_axi_encoded_size_ARREADY,
        m_axi_encoded_size_ARADDR,
        m_axi_encoded_size_ARID,
        m_axi_encoded_size_ARLEN,
        m_axi_encoded_size_ARSIZE,
        m_axi_encoded_size_ARBURST,
        m_axi_encoded_size_ARLOCK,
        m_axi_encoded_size_ARCACHE,
        m_axi_encoded_size_ARPROT,
        m_axi_encoded_size_ARQOS,
        m_axi_encoded_size_ARREGION,
        m_axi_encoded_size_ARUSER,
        m_axi_encoded_size_RVALID,
        m_axi_encoded_size_RREADY,
        m_axi_encoded_size_RDATA,
        m_axi_encoded_size_RLAST,
        m_axi_encoded_size_RID,
        m_axi_encoded_size_RUSER,
        m_axi_encoded_size_RRESP,
        m_axi_encoded_size_BVALID,
        m_axi_encoded_size_BREADY,
        m_axi_encoded_size_BRESP,
        m_axi_encoded_size_BID,
        m_axi_encoded_size_BUSER,
        encoded_size_offset_dout,
        encoded_size_offset_empty_n,
        encoded_size_offset_read,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] tmp_channel;
output   m_axi_encoded_size_AWVALID;
input   m_axi_encoded_size_AWREADY;
output  [63:0] m_axi_encoded_size_AWADDR;
output  [0:0] m_axi_encoded_size_AWID;
output  [31:0] m_axi_encoded_size_AWLEN;
output  [2:0] m_axi_encoded_size_AWSIZE;
output  [1:0] m_axi_encoded_size_AWBURST;
output  [1:0] m_axi_encoded_size_AWLOCK;
output  [3:0] m_axi_encoded_size_AWCACHE;
output  [2:0] m_axi_encoded_size_AWPROT;
output  [3:0] m_axi_encoded_size_AWQOS;
output  [3:0] m_axi_encoded_size_AWREGION;
output  [0:0] m_axi_encoded_size_AWUSER;
output   m_axi_encoded_size_WVALID;
input   m_axi_encoded_size_WREADY;
output  [31:0] m_axi_encoded_size_WDATA;
output  [3:0] m_axi_encoded_size_WSTRB;
output   m_axi_encoded_size_WLAST;
output  [0:0] m_axi_encoded_size_WID;
output  [0:0] m_axi_encoded_size_WUSER;
output   m_axi_encoded_size_ARVALID;
input   m_axi_encoded_size_ARREADY;
output  [63:0] m_axi_encoded_size_ARADDR;
output  [0:0] m_axi_encoded_size_ARID;
output  [31:0] m_axi_encoded_size_ARLEN;
output  [2:0] m_axi_encoded_size_ARSIZE;
output  [1:0] m_axi_encoded_size_ARBURST;
output  [1:0] m_axi_encoded_size_ARLOCK;
output  [3:0] m_axi_encoded_size_ARCACHE;
output  [2:0] m_axi_encoded_size_ARPROT;
output  [3:0] m_axi_encoded_size_ARQOS;
output  [3:0] m_axi_encoded_size_ARREGION;
output  [0:0] m_axi_encoded_size_ARUSER;
input   m_axi_encoded_size_RVALID;
output   m_axi_encoded_size_RREADY;
input  [31:0] m_axi_encoded_size_RDATA;
input   m_axi_encoded_size_RLAST;
input  [0:0] m_axi_encoded_size_RID;
input  [0:0] m_axi_encoded_size_RUSER;
input  [1:0] m_axi_encoded_size_RRESP;
input   m_axi_encoded_size_BVALID;
output   m_axi_encoded_size_BREADY;
input  [1:0] m_axi_encoded_size_BRESP;
input  [0:0] m_axi_encoded_size_BID;
input  [0:0] m_axi_encoded_size_BUSER;
input  [61:0] encoded_size_offset_dout;
input   encoded_size_offset_empty_n;
output   encoded_size_offset_read;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_encoded_size_AWVALID;
reg m_axi_encoded_size_WVALID;
reg m_axi_encoded_size_BREADY;
reg encoded_size_offset_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    encoded_size_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    encoded_size_blk_n_W;
wire    ap_CS_fsm_state3;
reg    encoded_size_blk_n_B;
wire    ap_CS_fsm_state8;
reg    encoded_size_offset_blk_n;
reg   [63:0] encoded_size_addr_reg_89;
reg    ap_block_state1;
wire   [63:0] encoded_size_offset_cast_i_i_fu_79_p1;
reg    ap_reg_ioackin_m_axi_encoded_size_AWREADY;
reg    ap_sig_ioackin_m_axi_encoded_size_AWREADY;
reg    ap_reg_ioackin_m_axi_encoded_size_WREADY;
reg    ap_sig_ioackin_m_axi_encoded_size_WREADY;
reg   [7:0] ap_NS_fsm;
wire    ap_ext_blocking_cur_n;
wire    ap_int_blocking_cur_n;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_reg_ioackin_m_axi_encoded_size_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_encoded_size_WREADY = 1'b0;
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
        end else if (((m_axi_encoded_size_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_encoded_size_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            if ((ap_sig_ioackin_m_axi_encoded_size_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_encoded_size_AWREADY <= 1'b0;
            end else if ((m_axi_encoded_size_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_encoded_size_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_encoded_size_WREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if ((ap_sig_ioackin_m_axi_encoded_size_WREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_encoded_size_WREADY <= 1'b0;
            end else if ((m_axi_encoded_size_WREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_encoded_size_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((encoded_size_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        encoded_size_addr_reg_89[61 : 0] <= encoded_size_offset_cast_i_i_fu_79_p1[61 : 0];
    end
end

always @ (*) begin
    if (((m_axi_encoded_size_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((m_axi_encoded_size_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_encoded_size_AWREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_encoded_size_AWREADY = m_axi_encoded_size_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_encoded_size_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_encoded_size_WREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_encoded_size_WREADY = m_axi_encoded_size_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_encoded_size_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        encoded_size_blk_n_AW = m_axi_encoded_size_AWREADY;
    end else begin
        encoded_size_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        encoded_size_blk_n_B = m_axi_encoded_size_BVALID;
    end else begin
        encoded_size_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        encoded_size_blk_n_W = m_axi_encoded_size_WREADY;
    end else begin
        encoded_size_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        encoded_size_offset_blk_n = encoded_size_offset_empty_n;
    end else begin
        encoded_size_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((encoded_size_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        encoded_size_offset_read = 1'b1;
    end else begin
        encoded_size_offset_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_encoded_size_AWREADY == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_encoded_size_AWVALID = 1'b1;
    end else begin
        m_axi_encoded_size_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_encoded_size_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_encoded_size_BREADY = 1'b1;
    end else begin
        m_axi_encoded_size_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_encoded_size_WREADY == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_encoded_size_WVALID = 1'b1;
    end else begin
        m_axi_encoded_size_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((encoded_size_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (ap_sig_ioackin_m_axi_encoded_size_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_m_axi_encoded_size_WREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((m_axi_encoded_size_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state1 = ((encoded_size_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_cur_n = (encoded_size_blk_n_W & encoded_size_blk_n_B & encoded_size_blk_n_AW);

assign ap_ext_blocking_n = (ap_ext_blocking_cur_n & 1'b1);

assign ap_int_blocking_cur_n = encoded_size_offset_blk_n;

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign encoded_size_offset_cast_i_i_fu_79_p1 = encoded_size_offset_dout;

assign m_axi_encoded_size_ARADDR = 64'd0;

assign m_axi_encoded_size_ARBURST = 2'd0;

assign m_axi_encoded_size_ARCACHE = 4'd0;

assign m_axi_encoded_size_ARID = 1'd0;

assign m_axi_encoded_size_ARLEN = 32'd0;

assign m_axi_encoded_size_ARLOCK = 2'd0;

assign m_axi_encoded_size_ARPROT = 3'd0;

assign m_axi_encoded_size_ARQOS = 4'd0;

assign m_axi_encoded_size_ARREGION = 4'd0;

assign m_axi_encoded_size_ARSIZE = 3'd0;

assign m_axi_encoded_size_ARUSER = 1'd0;

assign m_axi_encoded_size_ARVALID = 1'b0;

assign m_axi_encoded_size_AWADDR = encoded_size_addr_reg_89;

assign m_axi_encoded_size_AWBURST = 2'd0;

assign m_axi_encoded_size_AWCACHE = 4'd0;

assign m_axi_encoded_size_AWID = 1'd0;

assign m_axi_encoded_size_AWLEN = 32'd1;

assign m_axi_encoded_size_AWLOCK = 2'd0;

assign m_axi_encoded_size_AWPROT = 3'd0;

assign m_axi_encoded_size_AWQOS = 4'd0;

assign m_axi_encoded_size_AWREGION = 4'd0;

assign m_axi_encoded_size_AWSIZE = 3'd0;

assign m_axi_encoded_size_AWUSER = 1'd0;

assign m_axi_encoded_size_RREADY = 1'b0;

assign m_axi_encoded_size_WDATA = tmp_channel;

assign m_axi_encoded_size_WID = 1'd0;

assign m_axi_encoded_size_WLAST = 1'b0;

assign m_axi_encoded_size_WSTRB = 4'd15;

assign m_axi_encoded_size_WUSER = 1'd0;

always @ (posedge ap_clk) begin
    encoded_size_addr_reg_89[63:62] <= 2'b00;
end

endmodule //gZip_cu_gzip_Block_proc
