-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Oct 12 16:17:01 2022
-- Host        : haci3 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_workload_1_0_stub.vhdl
-- Design      : ulp_workload_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_delta1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_delta1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_delta1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_delta1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_delta1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_AWVALID : out STD_LOGIC;
    m_axi_delta1_AWREADY : in STD_LOGIC;
    m_axi_delta1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_delta1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_WLAST : out STD_LOGIC;
    m_axi_delta1_WVALID : out STD_LOGIC;
    m_axi_delta1_WREADY : in STD_LOGIC;
    m_axi_delta1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_BVALID : in STD_LOGIC;
    m_axi_delta1_BREADY : out STD_LOGIC;
    m_axi_delta1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_delta1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_delta1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_delta1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_delta1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_delta1_ARVALID : out STD_LOGIC;
    m_axi_delta1_ARREADY : in STD_LOGIC;
    m_axi_delta1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_delta1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_delta1_RLAST : in STD_LOGIC;
    m_axi_delta1_RVALID : in STD_LOGIC;
    m_axi_delta1_RREADY : out STD_LOGIC;
    m_axi_ly1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_ly1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ly1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ly1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ly1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_AWVALID : out STD_LOGIC;
    m_axi_ly1_AWREADY : in STD_LOGIC;
    m_axi_ly1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ly1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_WLAST : out STD_LOGIC;
    m_axi_ly1_WVALID : out STD_LOGIC;
    m_axi_ly1_WREADY : in STD_LOGIC;
    m_axi_ly1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_BVALID : in STD_LOGIC;
    m_axi_ly1_BREADY : out STD_LOGIC;
    m_axi_ly1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_ly1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ly1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ly1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ly1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ly1_ARVALID : out STD_LOGIC;
    m_axi_ly1_ARREADY : in STD_LOGIC;
    m_axi_ly1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ly1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ly1_RLAST : in STD_LOGIC;
    m_axi_ly1_RVALID : in STD_LOGIC;
    m_axi_ly1_RREADY : out STD_LOGIC;
    m_axi_w1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_w1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_w1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_w1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_w1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_AWVALID : out STD_LOGIC;
    m_axi_w1_AWREADY : in STD_LOGIC;
    m_axi_w1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_w1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_WLAST : out STD_LOGIC;
    m_axi_w1_WVALID : out STD_LOGIC;
    m_axi_w1_WREADY : in STD_LOGIC;
    m_axi_w1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_BVALID : in STD_LOGIC;
    m_axi_w1_BREADY : out STD_LOGIC;
    m_axi_w1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_w1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_w1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_w1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_w1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_w1_ARVALID : out STD_LOGIC;
    m_axi_w1_ARREADY : in STD_LOGIC;
    m_axi_w1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_w1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_w1_RLAST : in STD_LOGIC;
    m_axi_w1_RVALID : in STD_LOGIC;
    m_axi_w1_RREADY : out STD_LOGIC;
    m_axi_oldw1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_oldw1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_oldw1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_oldw1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_oldw1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_AWVALID : out STD_LOGIC;
    m_axi_oldw1_AWREADY : in STD_LOGIC;
    m_axi_oldw1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_oldw1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_WLAST : out STD_LOGIC;
    m_axi_oldw1_WVALID : out STD_LOGIC;
    m_axi_oldw1_WREADY : in STD_LOGIC;
    m_axi_oldw1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_BVALID : in STD_LOGIC;
    m_axi_oldw1_BREADY : out STD_LOGIC;
    m_axi_oldw1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_oldw1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_oldw1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_oldw1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_oldw1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_oldw1_ARVALID : out STD_LOGIC;
    m_axi_oldw1_ARREADY : in STD_LOGIC;
    m_axi_oldw1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_oldw1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_oldw1_RLAST : in STD_LOGIC;
    m_axi_oldw1_RVALID : in STD_LOGIC;
    m_axi_oldw1_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_delta1_AWADDR[63:0],m_axi_delta1_AWLEN[7:0],m_axi_delta1_AWSIZE[2:0],m_axi_delta1_AWBURST[1:0],m_axi_delta1_AWLOCK[1:0],m_axi_delta1_AWREGION[3:0],m_axi_delta1_AWCACHE[3:0],m_axi_delta1_AWPROT[2:0],m_axi_delta1_AWQOS[3:0],m_axi_delta1_AWVALID,m_axi_delta1_AWREADY,m_axi_delta1_WDATA[31:0],m_axi_delta1_WSTRB[3:0],m_axi_delta1_WLAST,m_axi_delta1_WVALID,m_axi_delta1_WREADY,m_axi_delta1_BRESP[1:0],m_axi_delta1_BVALID,m_axi_delta1_BREADY,m_axi_delta1_ARADDR[63:0],m_axi_delta1_ARLEN[7:0],m_axi_delta1_ARSIZE[2:0],m_axi_delta1_ARBURST[1:0],m_axi_delta1_ARLOCK[1:0],m_axi_delta1_ARREGION[3:0],m_axi_delta1_ARCACHE[3:0],m_axi_delta1_ARPROT[2:0],m_axi_delta1_ARQOS[3:0],m_axi_delta1_ARVALID,m_axi_delta1_ARREADY,m_axi_delta1_RDATA[31:0],m_axi_delta1_RRESP[1:0],m_axi_delta1_RLAST,m_axi_delta1_RVALID,m_axi_delta1_RREADY,m_axi_ly1_AWADDR[63:0],m_axi_ly1_AWLEN[7:0],m_axi_ly1_AWSIZE[2:0],m_axi_ly1_AWBURST[1:0],m_axi_ly1_AWLOCK[1:0],m_axi_ly1_AWREGION[3:0],m_axi_ly1_AWCACHE[3:0],m_axi_ly1_AWPROT[2:0],m_axi_ly1_AWQOS[3:0],m_axi_ly1_AWVALID,m_axi_ly1_AWREADY,m_axi_ly1_WDATA[31:0],m_axi_ly1_WSTRB[3:0],m_axi_ly1_WLAST,m_axi_ly1_WVALID,m_axi_ly1_WREADY,m_axi_ly1_BRESP[1:0],m_axi_ly1_BVALID,m_axi_ly1_BREADY,m_axi_ly1_ARADDR[63:0],m_axi_ly1_ARLEN[7:0],m_axi_ly1_ARSIZE[2:0],m_axi_ly1_ARBURST[1:0],m_axi_ly1_ARLOCK[1:0],m_axi_ly1_ARREGION[3:0],m_axi_ly1_ARCACHE[3:0],m_axi_ly1_ARPROT[2:0],m_axi_ly1_ARQOS[3:0],m_axi_ly1_ARVALID,m_axi_ly1_ARREADY,m_axi_ly1_RDATA[31:0],m_axi_ly1_RRESP[1:0],m_axi_ly1_RLAST,m_axi_ly1_RVALID,m_axi_ly1_RREADY,m_axi_w1_AWADDR[63:0],m_axi_w1_AWLEN[7:0],m_axi_w1_AWSIZE[2:0],m_axi_w1_AWBURST[1:0],m_axi_w1_AWLOCK[1:0],m_axi_w1_AWREGION[3:0],m_axi_w1_AWCACHE[3:0],m_axi_w1_AWPROT[2:0],m_axi_w1_AWQOS[3:0],m_axi_w1_AWVALID,m_axi_w1_AWREADY,m_axi_w1_WDATA[31:0],m_axi_w1_WSTRB[3:0],m_axi_w1_WLAST,m_axi_w1_WVALID,m_axi_w1_WREADY,m_axi_w1_BRESP[1:0],m_axi_w1_BVALID,m_axi_w1_BREADY,m_axi_w1_ARADDR[63:0],m_axi_w1_ARLEN[7:0],m_axi_w1_ARSIZE[2:0],m_axi_w1_ARBURST[1:0],m_axi_w1_ARLOCK[1:0],m_axi_w1_ARREGION[3:0],m_axi_w1_ARCACHE[3:0],m_axi_w1_ARPROT[2:0],m_axi_w1_ARQOS[3:0],m_axi_w1_ARVALID,m_axi_w1_ARREADY,m_axi_w1_RDATA[31:0],m_axi_w1_RRESP[1:0],m_axi_w1_RLAST,m_axi_w1_RVALID,m_axi_w1_RREADY,m_axi_oldw1_AWADDR[63:0],m_axi_oldw1_AWLEN[7:0],m_axi_oldw1_AWSIZE[2:0],m_axi_oldw1_AWBURST[1:0],m_axi_oldw1_AWLOCK[1:0],m_axi_oldw1_AWREGION[3:0],m_axi_oldw1_AWCACHE[3:0],m_axi_oldw1_AWPROT[2:0],m_axi_oldw1_AWQOS[3:0],m_axi_oldw1_AWVALID,m_axi_oldw1_AWREADY,m_axi_oldw1_WDATA[31:0],m_axi_oldw1_WSTRB[3:0],m_axi_oldw1_WLAST,m_axi_oldw1_WVALID,m_axi_oldw1_WREADY,m_axi_oldw1_BRESP[1:0],m_axi_oldw1_BVALID,m_axi_oldw1_BREADY,m_axi_oldw1_ARADDR[63:0],m_axi_oldw1_ARLEN[7:0],m_axi_oldw1_ARSIZE[2:0],m_axi_oldw1_ARBURST[1:0],m_axi_oldw1_ARLOCK[1:0],m_axi_oldw1_ARREGION[3:0],m_axi_oldw1_ARCACHE[3:0],m_axi_oldw1_ARPROT[2:0],m_axi_oldw1_ARQOS[3:0],m_axi_oldw1_ARVALID,m_axi_oldw1_ARREADY,m_axi_oldw1_RDATA[31:0],m_axi_oldw1_RRESP[1:0],m_axi_oldw1_RLAST,m_axi_oldw1_RVALID,m_axi_oldw1_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "workload,Vivado 2020.2";
begin
end;
