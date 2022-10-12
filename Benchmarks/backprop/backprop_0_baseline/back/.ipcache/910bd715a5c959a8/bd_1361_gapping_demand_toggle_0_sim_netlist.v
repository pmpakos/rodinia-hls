// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Oct 12 16:14:30 2022
// Host        : haci3 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_1361_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_1361_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_1361_gapping_demand_toggle_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WpplON9gajPqZwUKldyuoeqmBpIPSBxYcr5JWxrDlqNhqbxliKwmPwmbmeArplvGzrWaKVJ8yMLk
xTgTAsmnRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PywlUwtIgAXcje485P53GElPqY0h5tEj5ZDYGG4C1L/pCl1vhbCpI4Lfv1uBUhTCUgt0vUUApdRs
K2IImoVdVbz1EI11gNNCxuGNEsj4QbnWfiiRUf8TsfVO4gWgHDJkD4RJc+jcEVx/ZrSadMs2mHy7
KNZCnUFKCidfdRy/hkw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
unxmOFx/kGsfl24PCNNEZkygDDk8LvPrdhRZmBKwU8hEl0IYKnNbmVzy0GX33C+cHqleOLdJYv/h
wKQu75v68Cl8qlEV1Vqfa7UnK7q4w6bLjBa9BHtnG7S/H0Ywr54xnAXnSKvxTDfYX2sDgkcwSXoh
X0q3YhQRNlz6nKs2p675XjlEojeW92VNoWv8pHj8MG/qmJ8VohHbQpf0YxozMcZpH0CF/Ozm/fua
Vyb99q8DdEkMUxP21j9+F/I46Pbkcvq9zC2FY4Mv+gYZfH461p3qA1P0UNBQRmRRkOCCOAxz3PHk
qsrTTWDzAK0GxdzwQ7cbJFKBbdBVaV6+4memyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA50PpjJaJ8uV4EV7d4QCm5ucA0irsAJKsW/2yhM7uxfdfY6+ycy5Dlu6AXQj787AwSOkZjihqnA
0ZuEvQsnWN+aN5ZJgO/zI+HLHFGLXVZBK4YXwqHRk9mh8mtXkERd+D/Ig8IyNAjqeNFZtCo2lzge
AowqsmCoC67eYhNG5p9fzPjDy5k+MEVGOvXR621zFn4wRLcANXbLLaqTgDI902JfKeuW3HE+NVjz
0kcqt1g2MHeO7vwLhiZFHoP5uU7phxW1PW5Y7GQhQXmnbxXYl2WKNQoAt9enH/W7IaH1Se4RY/MA
HR2SD6NxDpfgAqD/XrFGW0hzhzJlI6XWA2wiLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2C5b5Vf7eNgxsVgM+blog4oljuJGPE5amBDDw4IFWKEcJNxmK8iNsR1/nSU618rRzWshK/Fg8uY
H1Fs2nnnxOsbeSPfDz60zapynorXwzsi0dI/KtefB5PI8A9PzP9LZmPF5GoKgCyeO5RXGRNhstIX
p1ezoG0hvuiDRGjlMKc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
et3u9Nh2LCj8dZdn07LM2qUls9+keyt7JsISbFOsxR6cpH5B16zv97Rzwn74yMYiUBGAvUZ1T1v0
O4vr5rGCW0AQjy4M5nemZ9M6vuyPMPAob/tFs+R7Jb9fpt8qHPEH64ni3rOSEVPe07L1FARbFVCK
LUHHDuIaqTmTbQ20cYPgWi7rOJGYZaRI6TwujcBF5oJDmg+gry6t509xfzd/HPgX+tLX6NJuYBCP
ePAG3UjlqodSXw8U64081MNLzzmsSrNe2EnZfEXP2ODfphEFJ/9pYKdR8lyWMJQ6+Pu3vdvO+IIy
c0Cghu/ZzVtvJ7/zrgoR8hCFeuBzbeRvdhR5Fg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m2Nc/hOcqeBJFQqyL9SEkYAeLvPo2q4UIb79AxfyebsFVgipkPXe9Fr2Ly0oEBcpASNJVxE/qNX1
ncav7fcSQJ3AUai6lNvLIkrtdkVBATFfCbWr3T9gTPaXD1ZY1pnli57FrU8DixIaFRoeIg2lfWgX
Ejddks6fcCByoDETUKwOz1fhlUulegwij55Z9od8zC/RPnW2JzX7L7mQWAla4j7M4VzHtS/8AzAP
IcrhT+J0DDWfBDrYcYDo/5IL9X+cSnPrj3CzqrbyEBZ9J0tyVT8g9z9bEph9htiA9EuYQVcpbIB1
qmVC7LtsXr7t9qeijbb4dFcovnX3H5CRc3Xybg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UPKDuDrUpCqZq5As9ryjcITL7qO0/Aj65ai6MGkRJ5fsdrAIoRtKd/gZdMexAxpHxy5h8KvNWciR
45oibPZHqHo46BRzAtonK7cDtSPx2RaIzOvjoexdDjwbvwPqiCJhCul2J8EsDU1WPbSUWx7vpKn+
MYAq9BJrKBfkewHr8CqWmQugmrAbTxft49DV5mIiIEOhVCOTMV21e+pl1SODhXcx/d88X1XTvMY+
OkEL+ZPfyhoGAg9Tj5WjHVoAT0XcCjHObI3kOJqt3hPr2RYm1+yghuhT5ntdvMHa6iEBG/En+ah4
sN9yhdXkV5VsiSpxp/EsAX5tQkOiDZCtXXHNeQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBmtHpx5e1XZPx6PBIEZ/58/PYTolg3kUSJ5yidwAgHM+vcWKSyMd/LXtLj20j7EpJVceIapdGYF
4nkL9OaJnw2p3gO+zvHk44FY2WlPcGjJ9qy4Z8049p1vFldJbTCwn8j2kMzXfA1XD0ll2p+WVUVI
EDJhvfyMnZOPwoecUCmOKjFhw7Oe93CtOZTTQI+gL+gADbsYMQ4cpMYr3spVh2jDfyhZRzb4Bm5h
ZlvJFfItmnW4/YJNUbQXoE22pLPLOaoAtOONuU5fFYk7jrQlcGNSRbnIf7aS7oW0kJmbes5lzfoD
QmLyp2jy+Pig+uTYrKUU4x0GRLNhdkoO25o5ew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2320)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WpplON9gajPqZwUKldyuoeqmBpIPSBxYcr5JWxrDlqNhqbxliKwmPwmbmeArplvGzrWaKVJ8yMLk
xTgTAsmnRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PywlUwtIgAXcje485P53GElPqY0h5tEj5ZDYGG4C1L/pCl1vhbCpI4Lfv1uBUhTCUgt0vUUApdRs
K2IImoVdVbz1EI11gNNCxuGNEsj4QbnWfiiRUf8TsfVO4gWgHDJkD4RJc+jcEVx/ZrSadMs2mHy7
KNZCnUFKCidfdRy/hkw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
unxmOFx/kGsfl24PCNNEZkygDDk8LvPrdhRZmBKwU8hEl0IYKnNbmVzy0GX33C+cHqleOLdJYv/h
wKQu75v68Cl8qlEV1Vqfa7UnK7q4w6bLjBa9BHtnG7S/H0Ywr54xnAXnSKvxTDfYX2sDgkcwSXoh
X0q3YhQRNlz6nKs2p675XjlEojeW92VNoWv8pHj8MG/qmJ8VohHbQpf0YxozMcZpH0CF/Ozm/fua
Vyb99q8DdEkMUxP21j9+F/I46Pbkcvq9zC2FY4Mv+gYZfH461p3qA1P0UNBQRmRRkOCCOAxz3PHk
qsrTTWDzAK0GxdzwQ7cbJFKBbdBVaV6+4memyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA50PpjJaJ8uV4EV7d4QCm5ucA0irsAJKsW/2yhM7uxfdfY6+ycy5Dlu6AXQj787AwSOkZjihqnA
0ZuEvQsnWN+aN5ZJgO/zI+HLHFGLXVZBK4YXwqHRk9mh8mtXkERd+D/Ig8IyNAjqeNFZtCo2lzge
AowqsmCoC67eYhNG5p9fzPjDy5k+MEVGOvXR621zFn4wRLcANXbLLaqTgDI902JfKeuW3HE+NVjz
0kcqt1g2MHeO7vwLhiZFHoP5uU7phxW1PW5Y7GQhQXmnbxXYl2WKNQoAt9enH/W7IaH1Se4RY/MA
HR2SD6NxDpfgAqD/XrFGW0hzhzJlI6XWA2wiLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2C5b5Vf7eNgxsVgM+blog4oljuJGPE5amBDDw4IFWKEcJNxmK8iNsR1/nSU618rRzWshK/Fg8uY
H1Fs2nnnxOsbeSPfDz60zapynorXwzsi0dI/KtefB5PI8A9PzP9LZmPF5GoKgCyeO5RXGRNhstIX
p1ezoG0hvuiDRGjlMKc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
et3u9Nh2LCj8dZdn07LM2qUls9+keyt7JsISbFOsxR6cpH5B16zv97Rzwn74yMYiUBGAvUZ1T1v0
O4vr5rGCW0AQjy4M5nemZ9M6vuyPMPAob/tFs+R7Jb9fpt8qHPEH64ni3rOSEVPe07L1FARbFVCK
LUHHDuIaqTmTbQ20cYPgWi7rOJGYZaRI6TwujcBF5oJDmg+gry6t509xfzd/HPgX+tLX6NJuYBCP
ePAG3UjlqodSXw8U64081MNLzzmsSrNe2EnZfEXP2ODfphEFJ/9pYKdR8lyWMJQ6+Pu3vdvO+IIy
c0Cghu/ZzVtvJ7/zrgoR8hCFeuBzbeRvdhR5Fg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m2Nc/hOcqeBJFQqyL9SEkYAeLvPo2q4UIb79AxfyebsFVgipkPXe9Fr2Ly0oEBcpASNJVxE/qNX1
ncav7fcSQJ3AUai6lNvLIkrtdkVBATFfCbWr3T9gTPaXD1ZY1pnli57FrU8DixIaFRoeIg2lfWgX
Ejddks6fcCByoDETUKwOz1fhlUulegwij55Z9od8zC/RPnW2JzX7L7mQWAla4j7M4VzHtS/8AzAP
IcrhT+J0DDWfBDrYcYDo/5IL9X+cSnPrj3CzqrbyEBZ9J0tyVT8g9z9bEph9htiA9EuYQVcpbIB1
qmVC7LtsXr7t9qeijbb4dFcovnX3H5CRc3Xybg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UPKDuDrUpCqZq5As9ryjcITL7qO0/Aj65ai6MGkRJ5fsdrAIoRtKd/gZdMexAxpHxy5h8KvNWciR
45oibPZHqHo46BRzAtonK7cDtSPx2RaIzOvjoexdDjwbvwPqiCJhCul2J8EsDU1WPbSUWx7vpKn+
MYAq9BJrKBfkewHr8CqWmQugmrAbTxft49DV5mIiIEOhVCOTMV21e+pl1SODhXcx/d88X1XTvMY+
OkEL+ZPfyhoGAg9Tj5WjHVoAT0XcCjHObI3kOJqt3hPr2RYm1+yghuhT5ntdvMHa6iEBG/En+ah4
sN9yhdXkV5VsiSpxp/EsAX5tQkOiDZCtXXHNeQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBmtHpx5e1XZPx6PBIEZ/58/PYTolg3kUSJ5yidwAgHM+vcWKSyMd/LXtLj20j7EpJVceIapdGYF
4nkL9OaJnw2p3gO+zvHk44FY2WlPcGjJ9qy4Z8049p1vFldJbTCwn8j2kMzXfA1XD0ll2p+WVUVI
EDJhvfyMnZOPwoecUCmOKjFhw7Oe93CtOZTTQI+gL+gADbsYMQ4cpMYr3spVh2jDfyhZRzb4Bm5h
ZlvJFfItmnW4/YJNUbQXoE22pLPLOaoAtOONuU5fFYk7jrQlcGNSRbnIf7aS7oW0kJmbes5lzfoD
QmLyp2jy+Pig+uTYrKUU4x0GRLNhdkoO25o5ew==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mlllyS5AshiHWVgSaEXfWieSiDeqVG0g/VELxVZPWuNpKyhT2uVljIGW7ghuFN1N4gUS6y2l+w8k
GqNNoKcl1eeHdy5pcYqk1DmK6EK+6VtCXWcD7sQPskpgcsIRZlZYuvOQxNljxzmXqnROrfjPWBe8
V770b8BhvoZeachk0zB2S0NydH0hsRx8HWZc1inPc28xd0k1belIGuRNmLC/Ki74yGoMGtxbtmH3
aEfQGVtZbBxGWWs+mdYxD6uyg+zOyxNEahpA+NfgyNpO1XCIFsB241JlQUxkwvIYZuCbqGpnPGl8
9WSEA1z3k6dgzT32cw2ei7u7wh4JJjRlSo7TTw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h6dLBiA8YQX1Gqj5663a8/0UH3ATyzBfgMpAc/SWnIkS8blpLOiDk5cDGokGN1mAYJxDBWpXQMoJ
waUC+BAWCxdsS2BSCxeu4vDHiNdCqakz4jOWW73GFp38pvUL4CW/8pd2u6Dw6v6BtCYZEV5nvMC6
2uxyFcXpO4ieB6cgcUTK71ZlPcl4AxxC0nwG5IO2WITgSK5MjR2XTmn+2uO8AsRYG486A83z3Vtw
SGGmt54NMqexbtyGQKpyky3++RnJFCTTE4w7R1fNXkSXfaCPifJ0xsVuy8mo6hpWSnEWLy7/di9e
Jrgmqy1s3QbVznMm4HnMsqci1dVBHKVF3mJ06g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2736)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
