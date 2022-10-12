// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Oct 12 16:17:01 2022
// Host        : haci3 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_workload_1_0_stub.v
// Design      : ulp_workload_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "workload,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_delta1_AWADDR, m_axi_delta1_AWLEN, 
  m_axi_delta1_AWSIZE, m_axi_delta1_AWBURST, m_axi_delta1_AWLOCK, m_axi_delta1_AWREGION, 
  m_axi_delta1_AWCACHE, m_axi_delta1_AWPROT, m_axi_delta1_AWQOS, m_axi_delta1_AWVALID, 
  m_axi_delta1_AWREADY, m_axi_delta1_WDATA, m_axi_delta1_WSTRB, m_axi_delta1_WLAST, 
  m_axi_delta1_WVALID, m_axi_delta1_WREADY, m_axi_delta1_BRESP, m_axi_delta1_BVALID, 
  m_axi_delta1_BREADY, m_axi_delta1_ARADDR, m_axi_delta1_ARLEN, m_axi_delta1_ARSIZE, 
  m_axi_delta1_ARBURST, m_axi_delta1_ARLOCK, m_axi_delta1_ARREGION, m_axi_delta1_ARCACHE, 
  m_axi_delta1_ARPROT, m_axi_delta1_ARQOS, m_axi_delta1_ARVALID, m_axi_delta1_ARREADY, 
  m_axi_delta1_RDATA, m_axi_delta1_RRESP, m_axi_delta1_RLAST, m_axi_delta1_RVALID, 
  m_axi_delta1_RREADY, m_axi_ly1_AWADDR, m_axi_ly1_AWLEN, m_axi_ly1_AWSIZE, 
  m_axi_ly1_AWBURST, m_axi_ly1_AWLOCK, m_axi_ly1_AWREGION, m_axi_ly1_AWCACHE, 
  m_axi_ly1_AWPROT, m_axi_ly1_AWQOS, m_axi_ly1_AWVALID, m_axi_ly1_AWREADY, m_axi_ly1_WDATA, 
  m_axi_ly1_WSTRB, m_axi_ly1_WLAST, m_axi_ly1_WVALID, m_axi_ly1_WREADY, m_axi_ly1_BRESP, 
  m_axi_ly1_BVALID, m_axi_ly1_BREADY, m_axi_ly1_ARADDR, m_axi_ly1_ARLEN, m_axi_ly1_ARSIZE, 
  m_axi_ly1_ARBURST, m_axi_ly1_ARLOCK, m_axi_ly1_ARREGION, m_axi_ly1_ARCACHE, 
  m_axi_ly1_ARPROT, m_axi_ly1_ARQOS, m_axi_ly1_ARVALID, m_axi_ly1_ARREADY, m_axi_ly1_RDATA, 
  m_axi_ly1_RRESP, m_axi_ly1_RLAST, m_axi_ly1_RVALID, m_axi_ly1_RREADY, m_axi_w1_AWADDR, 
  m_axi_w1_AWLEN, m_axi_w1_AWSIZE, m_axi_w1_AWBURST, m_axi_w1_AWLOCK, m_axi_w1_AWREGION, 
  m_axi_w1_AWCACHE, m_axi_w1_AWPROT, m_axi_w1_AWQOS, m_axi_w1_AWVALID, m_axi_w1_AWREADY, 
  m_axi_w1_WDATA, m_axi_w1_WSTRB, m_axi_w1_WLAST, m_axi_w1_WVALID, m_axi_w1_WREADY, 
  m_axi_w1_BRESP, m_axi_w1_BVALID, m_axi_w1_BREADY, m_axi_w1_ARADDR, m_axi_w1_ARLEN, 
  m_axi_w1_ARSIZE, m_axi_w1_ARBURST, m_axi_w1_ARLOCK, m_axi_w1_ARREGION, m_axi_w1_ARCACHE, 
  m_axi_w1_ARPROT, m_axi_w1_ARQOS, m_axi_w1_ARVALID, m_axi_w1_ARREADY, m_axi_w1_RDATA, 
  m_axi_w1_RRESP, m_axi_w1_RLAST, m_axi_w1_RVALID, m_axi_w1_RREADY, m_axi_oldw1_AWADDR, 
  m_axi_oldw1_AWLEN, m_axi_oldw1_AWSIZE, m_axi_oldw1_AWBURST, m_axi_oldw1_AWLOCK, 
  m_axi_oldw1_AWREGION, m_axi_oldw1_AWCACHE, m_axi_oldw1_AWPROT, m_axi_oldw1_AWQOS, 
  m_axi_oldw1_AWVALID, m_axi_oldw1_AWREADY, m_axi_oldw1_WDATA, m_axi_oldw1_WSTRB, 
  m_axi_oldw1_WLAST, m_axi_oldw1_WVALID, m_axi_oldw1_WREADY, m_axi_oldw1_BRESP, 
  m_axi_oldw1_BVALID, m_axi_oldw1_BREADY, m_axi_oldw1_ARADDR, m_axi_oldw1_ARLEN, 
  m_axi_oldw1_ARSIZE, m_axi_oldw1_ARBURST, m_axi_oldw1_ARLOCK, m_axi_oldw1_ARREGION, 
  m_axi_oldw1_ARCACHE, m_axi_oldw1_ARPROT, m_axi_oldw1_ARQOS, m_axi_oldw1_ARVALID, 
  m_axi_oldw1_ARREADY, m_axi_oldw1_RDATA, m_axi_oldw1_RRESP, m_axi_oldw1_RLAST, 
  m_axi_oldw1_RVALID, m_axi_oldw1_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_delta1_AWADDR[63:0],m_axi_delta1_AWLEN[7:0],m_axi_delta1_AWSIZE[2:0],m_axi_delta1_AWBURST[1:0],m_axi_delta1_AWLOCK[1:0],m_axi_delta1_AWREGION[3:0],m_axi_delta1_AWCACHE[3:0],m_axi_delta1_AWPROT[2:0],m_axi_delta1_AWQOS[3:0],m_axi_delta1_AWVALID,m_axi_delta1_AWREADY,m_axi_delta1_WDATA[31:0],m_axi_delta1_WSTRB[3:0],m_axi_delta1_WLAST,m_axi_delta1_WVALID,m_axi_delta1_WREADY,m_axi_delta1_BRESP[1:0],m_axi_delta1_BVALID,m_axi_delta1_BREADY,m_axi_delta1_ARADDR[63:0],m_axi_delta1_ARLEN[7:0],m_axi_delta1_ARSIZE[2:0],m_axi_delta1_ARBURST[1:0],m_axi_delta1_ARLOCK[1:0],m_axi_delta1_ARREGION[3:0],m_axi_delta1_ARCACHE[3:0],m_axi_delta1_ARPROT[2:0],m_axi_delta1_ARQOS[3:0],m_axi_delta1_ARVALID,m_axi_delta1_ARREADY,m_axi_delta1_RDATA[31:0],m_axi_delta1_RRESP[1:0],m_axi_delta1_RLAST,m_axi_delta1_RVALID,m_axi_delta1_RREADY,m_axi_ly1_AWADDR[63:0],m_axi_ly1_AWLEN[7:0],m_axi_ly1_AWSIZE[2:0],m_axi_ly1_AWBURST[1:0],m_axi_ly1_AWLOCK[1:0],m_axi_ly1_AWREGION[3:0],m_axi_ly1_AWCACHE[3:0],m_axi_ly1_AWPROT[2:0],m_axi_ly1_AWQOS[3:0],m_axi_ly1_AWVALID,m_axi_ly1_AWREADY,m_axi_ly1_WDATA[31:0],m_axi_ly1_WSTRB[3:0],m_axi_ly1_WLAST,m_axi_ly1_WVALID,m_axi_ly1_WREADY,m_axi_ly1_BRESP[1:0],m_axi_ly1_BVALID,m_axi_ly1_BREADY,m_axi_ly1_ARADDR[63:0],m_axi_ly1_ARLEN[7:0],m_axi_ly1_ARSIZE[2:0],m_axi_ly1_ARBURST[1:0],m_axi_ly1_ARLOCK[1:0],m_axi_ly1_ARREGION[3:0],m_axi_ly1_ARCACHE[3:0],m_axi_ly1_ARPROT[2:0],m_axi_ly1_ARQOS[3:0],m_axi_ly1_ARVALID,m_axi_ly1_ARREADY,m_axi_ly1_RDATA[31:0],m_axi_ly1_RRESP[1:0],m_axi_ly1_RLAST,m_axi_ly1_RVALID,m_axi_ly1_RREADY,m_axi_w1_AWADDR[63:0],m_axi_w1_AWLEN[7:0],m_axi_w1_AWSIZE[2:0],m_axi_w1_AWBURST[1:0],m_axi_w1_AWLOCK[1:0],m_axi_w1_AWREGION[3:0],m_axi_w1_AWCACHE[3:0],m_axi_w1_AWPROT[2:0],m_axi_w1_AWQOS[3:0],m_axi_w1_AWVALID,m_axi_w1_AWREADY,m_axi_w1_WDATA[31:0],m_axi_w1_WSTRB[3:0],m_axi_w1_WLAST,m_axi_w1_WVALID,m_axi_w1_WREADY,m_axi_w1_BRESP[1:0],m_axi_w1_BVALID,m_axi_w1_BREADY,m_axi_w1_ARADDR[63:0],m_axi_w1_ARLEN[7:0],m_axi_w1_ARSIZE[2:0],m_axi_w1_ARBURST[1:0],m_axi_w1_ARLOCK[1:0],m_axi_w1_ARREGION[3:0],m_axi_w1_ARCACHE[3:0],m_axi_w1_ARPROT[2:0],m_axi_w1_ARQOS[3:0],m_axi_w1_ARVALID,m_axi_w1_ARREADY,m_axi_w1_RDATA[31:0],m_axi_w1_RRESP[1:0],m_axi_w1_RLAST,m_axi_w1_RVALID,m_axi_w1_RREADY,m_axi_oldw1_AWADDR[63:0],m_axi_oldw1_AWLEN[7:0],m_axi_oldw1_AWSIZE[2:0],m_axi_oldw1_AWBURST[1:0],m_axi_oldw1_AWLOCK[1:0],m_axi_oldw1_AWREGION[3:0],m_axi_oldw1_AWCACHE[3:0],m_axi_oldw1_AWPROT[2:0],m_axi_oldw1_AWQOS[3:0],m_axi_oldw1_AWVALID,m_axi_oldw1_AWREADY,m_axi_oldw1_WDATA[31:0],m_axi_oldw1_WSTRB[3:0],m_axi_oldw1_WLAST,m_axi_oldw1_WVALID,m_axi_oldw1_WREADY,m_axi_oldw1_BRESP[1:0],m_axi_oldw1_BVALID,m_axi_oldw1_BREADY,m_axi_oldw1_ARADDR[63:0],m_axi_oldw1_ARLEN[7:0],m_axi_oldw1_ARSIZE[2:0],m_axi_oldw1_ARBURST[1:0],m_axi_oldw1_ARLOCK[1:0],m_axi_oldw1_ARREGION[3:0],m_axi_oldw1_ARCACHE[3:0],m_axi_oldw1_ARPROT[2:0],m_axi_oldw1_ARQOS[3:0],m_axi_oldw1_ARVALID,m_axi_oldw1_ARREADY,m_axi_oldw1_RDATA[31:0],m_axi_oldw1_RRESP[1:0],m_axi_oldw1_RLAST,m_axi_oldw1_RVALID,m_axi_oldw1_RREADY" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_delta1_AWADDR;
  output [7:0]m_axi_delta1_AWLEN;
  output [2:0]m_axi_delta1_AWSIZE;
  output [1:0]m_axi_delta1_AWBURST;
  output [1:0]m_axi_delta1_AWLOCK;
  output [3:0]m_axi_delta1_AWREGION;
  output [3:0]m_axi_delta1_AWCACHE;
  output [2:0]m_axi_delta1_AWPROT;
  output [3:0]m_axi_delta1_AWQOS;
  output m_axi_delta1_AWVALID;
  input m_axi_delta1_AWREADY;
  output [31:0]m_axi_delta1_WDATA;
  output [3:0]m_axi_delta1_WSTRB;
  output m_axi_delta1_WLAST;
  output m_axi_delta1_WVALID;
  input m_axi_delta1_WREADY;
  input [1:0]m_axi_delta1_BRESP;
  input m_axi_delta1_BVALID;
  output m_axi_delta1_BREADY;
  output [63:0]m_axi_delta1_ARADDR;
  output [7:0]m_axi_delta1_ARLEN;
  output [2:0]m_axi_delta1_ARSIZE;
  output [1:0]m_axi_delta1_ARBURST;
  output [1:0]m_axi_delta1_ARLOCK;
  output [3:0]m_axi_delta1_ARREGION;
  output [3:0]m_axi_delta1_ARCACHE;
  output [2:0]m_axi_delta1_ARPROT;
  output [3:0]m_axi_delta1_ARQOS;
  output m_axi_delta1_ARVALID;
  input m_axi_delta1_ARREADY;
  input [31:0]m_axi_delta1_RDATA;
  input [1:0]m_axi_delta1_RRESP;
  input m_axi_delta1_RLAST;
  input m_axi_delta1_RVALID;
  output m_axi_delta1_RREADY;
  output [63:0]m_axi_ly1_AWADDR;
  output [7:0]m_axi_ly1_AWLEN;
  output [2:0]m_axi_ly1_AWSIZE;
  output [1:0]m_axi_ly1_AWBURST;
  output [1:0]m_axi_ly1_AWLOCK;
  output [3:0]m_axi_ly1_AWREGION;
  output [3:0]m_axi_ly1_AWCACHE;
  output [2:0]m_axi_ly1_AWPROT;
  output [3:0]m_axi_ly1_AWQOS;
  output m_axi_ly1_AWVALID;
  input m_axi_ly1_AWREADY;
  output [31:0]m_axi_ly1_WDATA;
  output [3:0]m_axi_ly1_WSTRB;
  output m_axi_ly1_WLAST;
  output m_axi_ly1_WVALID;
  input m_axi_ly1_WREADY;
  input [1:0]m_axi_ly1_BRESP;
  input m_axi_ly1_BVALID;
  output m_axi_ly1_BREADY;
  output [63:0]m_axi_ly1_ARADDR;
  output [7:0]m_axi_ly1_ARLEN;
  output [2:0]m_axi_ly1_ARSIZE;
  output [1:0]m_axi_ly1_ARBURST;
  output [1:0]m_axi_ly1_ARLOCK;
  output [3:0]m_axi_ly1_ARREGION;
  output [3:0]m_axi_ly1_ARCACHE;
  output [2:0]m_axi_ly1_ARPROT;
  output [3:0]m_axi_ly1_ARQOS;
  output m_axi_ly1_ARVALID;
  input m_axi_ly1_ARREADY;
  input [31:0]m_axi_ly1_RDATA;
  input [1:0]m_axi_ly1_RRESP;
  input m_axi_ly1_RLAST;
  input m_axi_ly1_RVALID;
  output m_axi_ly1_RREADY;
  output [63:0]m_axi_w1_AWADDR;
  output [7:0]m_axi_w1_AWLEN;
  output [2:0]m_axi_w1_AWSIZE;
  output [1:0]m_axi_w1_AWBURST;
  output [1:0]m_axi_w1_AWLOCK;
  output [3:0]m_axi_w1_AWREGION;
  output [3:0]m_axi_w1_AWCACHE;
  output [2:0]m_axi_w1_AWPROT;
  output [3:0]m_axi_w1_AWQOS;
  output m_axi_w1_AWVALID;
  input m_axi_w1_AWREADY;
  output [31:0]m_axi_w1_WDATA;
  output [3:0]m_axi_w1_WSTRB;
  output m_axi_w1_WLAST;
  output m_axi_w1_WVALID;
  input m_axi_w1_WREADY;
  input [1:0]m_axi_w1_BRESP;
  input m_axi_w1_BVALID;
  output m_axi_w1_BREADY;
  output [63:0]m_axi_w1_ARADDR;
  output [7:0]m_axi_w1_ARLEN;
  output [2:0]m_axi_w1_ARSIZE;
  output [1:0]m_axi_w1_ARBURST;
  output [1:0]m_axi_w1_ARLOCK;
  output [3:0]m_axi_w1_ARREGION;
  output [3:0]m_axi_w1_ARCACHE;
  output [2:0]m_axi_w1_ARPROT;
  output [3:0]m_axi_w1_ARQOS;
  output m_axi_w1_ARVALID;
  input m_axi_w1_ARREADY;
  input [31:0]m_axi_w1_RDATA;
  input [1:0]m_axi_w1_RRESP;
  input m_axi_w1_RLAST;
  input m_axi_w1_RVALID;
  output m_axi_w1_RREADY;
  output [63:0]m_axi_oldw1_AWADDR;
  output [7:0]m_axi_oldw1_AWLEN;
  output [2:0]m_axi_oldw1_AWSIZE;
  output [1:0]m_axi_oldw1_AWBURST;
  output [1:0]m_axi_oldw1_AWLOCK;
  output [3:0]m_axi_oldw1_AWREGION;
  output [3:0]m_axi_oldw1_AWCACHE;
  output [2:0]m_axi_oldw1_AWPROT;
  output [3:0]m_axi_oldw1_AWQOS;
  output m_axi_oldw1_AWVALID;
  input m_axi_oldw1_AWREADY;
  output [31:0]m_axi_oldw1_WDATA;
  output [3:0]m_axi_oldw1_WSTRB;
  output m_axi_oldw1_WLAST;
  output m_axi_oldw1_WVALID;
  input m_axi_oldw1_WREADY;
  input [1:0]m_axi_oldw1_BRESP;
  input m_axi_oldw1_BVALID;
  output m_axi_oldw1_BREADY;
  output [63:0]m_axi_oldw1_ARADDR;
  output [7:0]m_axi_oldw1_ARLEN;
  output [2:0]m_axi_oldw1_ARSIZE;
  output [1:0]m_axi_oldw1_ARBURST;
  output [1:0]m_axi_oldw1_ARLOCK;
  output [3:0]m_axi_oldw1_ARREGION;
  output [3:0]m_axi_oldw1_ARCACHE;
  output [2:0]m_axi_oldw1_ARPROT;
  output [3:0]m_axi_oldw1_ARQOS;
  output m_axi_oldw1_ARVALID;
  input m_axi_oldw1_ARREADY;
  input [31:0]m_axi_oldw1_RDATA;
  input [1:0]m_axi_oldw1_RRESP;
  input m_axi_oldw1_RLAST;
  input m_axi_oldw1_RVALID;
  output m_axi_oldw1_RREADY;
endmodule
