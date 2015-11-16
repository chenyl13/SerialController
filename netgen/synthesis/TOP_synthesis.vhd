--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: TOP_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 16 12:38:39 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm TOP -w -dir netgen/synthesis -ofmt vhdl -sim TOP.ngc TOP_synthesis.vhd 
-- Device	: xc6slx100-3-fgg676
-- Input file	: TOP.ngc
-- Output file	: D:\code\git\github\SerialController\netgen\synthesis\TOP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: TOP
-- Xilinx	: D:\ProgramFiles\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TOP is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    USB_RS232_RXD : in STD_LOGIC := 'X'; 
    USB_RS232_TXD : out STD_LOGIC; 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TOP;

architecture Structure of TOP is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_BUFG_1 : STD_LOGIC; 
  signal USB_RS232_RXD_IBUF_2 : STD_LOGIC; 
  signal USB_RS232_TXD_OBUF_3 : STD_LOGIC; 
  signal Serial_inst1_data_ready_4 : STD_LOGIC; 
  signal led_0_5 : STD_LOGIC; 
  signal en_r_6 : STD_LOGIC; 
  signal reset_inv : STD_LOGIC; 
  signal Serial_inst1_pr_state_FSM_FFd2_In : STD_LOGIC; 
  signal Serial_inst1_pr_state_FSM_FFd3_In : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_out_stb_10 : STD_LOGIC; 
  signal Serial_inst1_pr_state_FSM_FFd3_11 : STD_LOGIC; 
  signal Serial_inst1_reset_pr_state_2_AND_14_o_norst : STD_LOGIC; 
  signal Serial_inst1_pr_state_FSM_FFd2_14 : STD_LOGIC; 
  signal Serial_inst1_uart_out_ack_15 : STD_LOGIC; 
  signal Serial_inst1_reset_clk_DFF_68_16 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_In : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_In_33 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_n0283_inv : STD_LOGIC; 
  signal Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o : STD_LOGIC; 
  signal Serial_inst1_UART_instance_baud_counter_3_INV_37_o : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_bit : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_oversample_baud_tick_70 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal en_r_glue_set : STD_LOGIC; 
  signal Serial_inst1_uart_out_ack_glue_set_87 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_out_stb_rstpot_88 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_bit_rstpot_89 : STD_LOGIC; 
  signal led_0_rstpot_90 : STD_LOGIC; 
  signal Serial_inst1_data_0_rstpot_91 : STD_LOGIC; 
  signal Serial_inst1_data_ready_rstpot_92 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_7_rstpot_93 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_6_rstpot_94 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_5_rstpot_95 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_4_rstpot_96 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_3_rstpot_97 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_2_rstpot_98 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_1_rstpot_99 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_data_block_0_rstpot_100 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_1_LD_112 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_bit_C_117 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_bit_P_118 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_count_0_dpot1_121 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_count_1_dpot1_122 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_count_2_dpot1_123 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_1_C_1_dpot_124 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_1_P_1_dpot_125 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_0_C_0_dpot_131 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_uart_rx_filter_0_P_0_dpot_132 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_oversample_baud_tick_1_133 : STD_LOGIC; 
  signal Serial_inst1_UART_instance_oversample_baud_tick_2_134 : STD_LOGIC; 
  signal reset_IBUF_135 : STD_LOGIC; 
  signal reset_IBUF_BUFG_LUT1 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal Serial_inst1_data : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Serial_inst1_data_bus : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Serial_inst1_UART_instance_uart_rx_data_block : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Serial_inst1_UART_instance_uart_rx_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Serial_inst1_UART_instance_baud_counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Serial_inst1_UART_instance_oversample_baud_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Serial_inst1_UART_instance_uart_rx_sync_clock : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => USB_RS232_TXD_OBUF_3
    );
  Serial_inst1_pr_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_pr_state_FSM_FFd2_In,
      Q => Serial_inst1_pr_state_FSM_FFd2_14
    );
  Serial_inst1_pr_state_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_pr_state_FSM_FFd3_In,
      Q => Serial_inst1_pr_state_FSM_FFd3_11
    );
  Serial_inst1_reset_clk_DFF_68 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_reset_pr_state_2_AND_14_o_norst,
      R => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_reset_clk_DFF_68_16
    );
  Serial_inst1_data_bus_0 : FD
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_data(0),
      Q => Serial_inst1_data_bus(0)
    );
  Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_In_33,
      Q => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59
    );
  Serial_inst1_UART_instance_uart_rx_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_count_2_dpot1_123,
      Q => Serial_inst1_UART_instance_uart_rx_count(2)
    );
  Serial_inst1_UART_instance_uart_rx_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_count_1_dpot1_122,
      Q => Serial_inst1_UART_instance_uart_rx_count(1)
    );
  Serial_inst1_UART_instance_uart_rx_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_count_0_dpot1_121,
      Q => Serial_inst1_UART_instance_uart_rx_count(0)
    );
  Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_In,
      Q => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60
    );
  Serial_inst1_UART_instance_uart_rx_sync_clock_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_n0283_inv,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_baud_counter_3_INV_37_o,
      Q => Serial_inst1_UART_instance_uart_rx_sync_clock(3)
    );
  Serial_inst1_UART_instance_uart_rx_sync_clock_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_n0283_inv,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_baud_counter(2),
      Q => Serial_inst1_UART_instance_uart_rx_sync_clock(2)
    );
  Serial_inst1_UART_instance_uart_rx_sync_clock_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_n0283_inv,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_baud_counter(1),
      Q => Serial_inst1_UART_instance_uart_rx_sync_clock(1)
    );
  Serial_inst1_UART_instance_uart_rx_sync_clock_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_n0283_inv,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_baud_counter(0),
      Q => Serial_inst1_UART_instance_uart_rx_sync_clock(0)
    );
  Serial_inst1_UART_instance_baud_counter_3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(3),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_baud_counter(3)
    );
  Serial_inst1_UART_instance_baud_counter_2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(2),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_baud_counter(2)
    );
  Serial_inst1_UART_instance_baud_counter_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(1),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_baud_counter(1)
    );
  Serial_inst1_UART_instance_baud_counter_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(0),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_baud_counter(0)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_9 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(9),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_oversample_baud_counter(9)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(8),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(8)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_7 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(7),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_oversample_baud_counter(7)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(6),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(6)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(5),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(5)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(4),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(4)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(3),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_oversample_baud_counter(3)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(2),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(2)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(1),
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_oversample_baud_counter(1)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(0),
      Q => Serial_inst1_UART_instance_oversample_baud_counter(0)
    );
  Serial_inst1_UART_instance_oversample_baud_tick : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o,
      Q => Serial_inst1_UART_instance_oversample_baud_tick_70
    );
  Q_n01491 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => en_r_6,
      I1 => Serial_inst1_data_ready_4,
      O => en_r_glue_set
    );
  Serial_inst1_Mmux_pr_state_2_PWR_11_o_Mux_25_o11 : LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      I0 => Serial_inst1_data_ready_4,
      I1 => en_r_6,
      I2 => Serial_inst1_pr_state_FSM_FFd2_14,
      I3 => Serial_inst1_pr_state_FSM_FFd3_11,
      I4 => Serial_inst1_UART_instance_uart_rx_data_out_stb_10,
      O => Serial_inst1_reset_pr_state_2_AND_14_o_norst
    );
  Serial_inst1_pr_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => Serial_inst1_pr_state_FSM_FFd2_14,
      I1 => reset_IBUF_135,
      I2 => Serial_inst1_pr_state_FSM_FFd3_11,
      O => Serial_inst1_pr_state_FSM_FFd2_In
    );
  Serial_inst1_pr_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"2622"
    )
    port map (
      I0 => Serial_inst1_pr_state_FSM_FFd3_11,
      I1 => reset_IBUF_135,
      I2 => Serial_inst1_pr_state_FSM_FFd2_14,
      I3 => Serial_inst1_UART_instance_uart_rx_data_out_stb_10,
      O => Serial_inst1_pr_state_FSM_FFd3_In
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT611 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(4),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(3),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(2),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      O => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26
    );
  Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o_9_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT81 : LUT4
    generic map(
      INIT => X"F0E1"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I3 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(7)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_2_OUT41 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_baud_counter(3),
      I1 => Serial_inst1_UART_instance_baud_counter(1),
      I2 => Serial_inst1_UART_instance_baud_counter(2),
      I3 => Serial_inst1_UART_instance_baud_counter(0),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(3)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_baud_counter(2),
      I1 => Serial_inst1_UART_instance_baud_counter(1),
      I2 => Serial_inst1_UART_instance_baud_counter(0),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(2)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_baud_counter(1),
      I1 => Serial_inst1_UART_instance_baud_counter(0),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(1)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(1)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT10_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      O => N2
    );
  Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_In_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(2),
      I1 => Serial_inst1_UART_instance_uart_rx_count(1),
      I2 => Serial_inst1_UART_instance_uart_rx_count(0),
      O => N4
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW0 : LUT5
    generic map(
      INIT => X"7FDFF7FD"
    )
    port map (
      I0 => reset_IBUF_135,
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(1),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(0),
      I3 => Serial_inst1_UART_instance_baud_counter(1),
      I4 => Serial_inst1_UART_instance_baud_counter(0),
      O => N6
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_135
    );
  USB_RS232_RXD_IBUF : IBUF
    port map (
      I => USB_RS232_RXD,
      O => USB_RS232_RXD_IBUF_2
    );
  led_7_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_0_5,
      O => led(0)
    );
  USB_RS232_TXD_OBUF : OBUF
    port map (
      I => USB_RS232_TXD_OBUF_3,
      O => USB_RS232_TXD
    );
  en_r : FDR
    port map (
      C => clk_BUFGP_0,
      D => en_r_glue_set,
      R => reset_IBUF_BUFG_LUT1,
      Q => en_r_6
    );
  Serial_inst1_uart_out_ack : FDR
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_uart_out_ack_glue_set_87,
      R => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_uart_out_ack_15
    );
  Serial_inst1_UART_instance_uart_rx_data_out_stb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_out_stb_rstpot_88,
      Q => Serial_inst1_UART_instance_uart_rx_data_out_stb_10
    );
  led_0 : FD
    port map (
      C => clk_BUFGP_0,
      D => led_0_rstpot_90,
      Q => led_0_5
    );
  Serial_inst1_data_0 : FD
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_data_0_rstpot_91,
      Q => Serial_inst1_data(0)
    );
  Serial_inst1_data_ready : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_data_ready_rstpot_92,
      Q => Serial_inst1_data_ready_4
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT91 : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC2"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(8)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT71 : LUT6
    generic map(
      INIT => X"FFFF0000FF0000FE"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(6)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61 : LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(5)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_7_rstpot_93,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(7)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_6_rstpot_94,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(6)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_5_rstpot_95,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(5)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_4_rstpot_96,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(4)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_3_rstpot_97,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(3)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_2_rstpot_98,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(2)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_1_rstpot_99,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(1)
    );
  Serial_inst1_UART_instance_uart_rx_data_block_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_uart_rx_data_block_0_rstpot_100,
      Q => Serial_inst1_UART_instance_uart_rx_data_block(0)
    );
  Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o_9_1_SW3 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      O => N13
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT31 : LUT6
    generic map(
      INIT => X"A9A9A9A9A9A9A900"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(2),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I4 => N13,
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(2)
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT11 : LUT6
    generic map(
      INIT => X"5555555555555554"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I4 => N2,
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(0)
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW3 : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_tick_1_133,
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      O => N22
    );
  Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"DDCC1302DDCCDDCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I1 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I2 => N4,
      I3 => N21,
      I4 => N6,
      I5 => N22,
      O => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_In_33
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW4 : LUT6
    generic map(
      INIT => X"8020401000000000"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_70,
      O => N24
    );
  Serial_inst1_UART_instance_uart_rx_data_out_stb_rstpot : LUT6
    generic map(
      INIT => X"C4C4F4C0C4C4C4C4"
    )
    port map (
      I0 => Serial_inst1_uart_out_ack_15,
      I1 => Serial_inst1_UART_instance_uart_rx_data_out_stb_10,
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I3 => Serial_inst1_UART_instance_uart_rx_bit,
      I4 => N6,
      I5 => N24,
      O => Serial_inst1_UART_instance_uart_rx_data_out_stb_rstpot_88
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW6 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(7),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(6),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_70,
      O => N28
    );
  Serial_inst1_UART_instance_uart_rx_data_block_6_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(6),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N28,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_6_rstpot_94
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW7 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(6),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(5),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N30
    );
  Serial_inst1_UART_instance_uart_rx_data_block_5_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(5),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N30,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_5_rstpot_95
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW8 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(5),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(4),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N32
    );
  Serial_inst1_UART_instance_uart_rx_data_block_4_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(4),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N32,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_4_rstpot_96
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW9 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(4),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(3),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N34
    );
  Serial_inst1_UART_instance_uart_rx_data_block_3_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(3),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N34,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_3_rstpot_97
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW10 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(3),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(2),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N36
    );
  Serial_inst1_UART_instance_uart_rx_data_block_2_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(2),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N36,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_2_rstpot_98
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW11 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(2),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(1),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N38
    );
  Serial_inst1_UART_instance_uart_rx_data_block_1_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(1),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N38,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_1_rstpot_99
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW12 : LUT6
    generic map(
      INIT => X"ACCCCACCCCCCCCCC"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(1),
      I1 => Serial_inst1_UART_instance_uart_rx_data_block(0),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N40
    );
  Serial_inst1_UART_instance_uart_rx_data_block_0_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAEABA2A8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(0),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N40,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_data_block_0_rstpot_100
    );
  Serial_inst1_UART_instance_uart_rx_filter_1_LD : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => USB_RS232_TXD_OBUF_3,
      G => reset_inv,
      Q => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112
    );
  Serial_inst1_UART_instance_uart_rx_filter_1_C_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_dpot_124,
      Q => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113
    );
  Serial_inst1_UART_instance_uart_rx_filter_1_P_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_dpot_125,
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114
    );
  Serial_inst1_UART_instance_uart_rx_filter_0_C_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_dpot_131,
      Q => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115
    );
  Serial_inst1_UART_instance_uart_rx_filter_0_P_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Serial_inst1_UART_instance_oversample_baud_tick_70,
      D => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_dpot_132,
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116
    );
  Serial_inst1_UART_instance_uart_rx_bit_C : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_uart_rx_bit_rstpot_89,
      Q => Serial_inst1_UART_instance_uart_rx_bit_C_117
    );
  Serial_inst1_UART_instance_uart_rx_bit_P : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => Serial_inst1_UART_instance_uart_rx_bit_rstpot_89,
      PRE => reset_IBUF_BUFG_LUT1,
      Q => Serial_inst1_UART_instance_uart_rx_bit_P_118
    );
  Serial_inst1_UART_instance_uart_rx_bit1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I1 => Serial_inst1_UART_instance_uart_rx_bit_C_117,
      I2 => Serial_inst1_UART_instance_uart_rx_bit_P_118,
      O => Serial_inst1_UART_instance_uart_rx_bit
    );
  led_0_rstpot : LUT5
    generic map(
      INIT => X"F7FF8088"
    )
    port map (
      I0 => en_r_6,
      I1 => reset_IBUF_135,
      I2 => Serial_inst1_data_bus(0),
      I3 => Serial_inst1_reset_clk_DFF_68_16,
      I4 => led_0_5,
      O => led_0_rstpot_90
    );
  Serial_inst1_data_ready_rstpot : LUT5
    generic map(
      INIT => X"2AFA2A2A"
    )
    port map (
      I0 => Serial_inst1_data_ready_4,
      I1 => en_r_6,
      I2 => reset_IBUF_135,
      I3 => Serial_inst1_pr_state_FSM_FFd3_11,
      I4 => Serial_inst1_pr_state_FSM_FFd2_14,
      O => Serial_inst1_data_ready_rstpot_92
    );
  Serial_inst1_data_0_rstpot : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => Serial_inst1_data(0),
      I1 => Serial_inst1_pr_state_FSM_FFd2_14,
      I2 => Serial_inst1_pr_state_FSM_FFd3_11,
      I3 => reset_IBUF_135,
      I4 => Serial_inst1_UART_instance_uart_rx_data_block(0),
      O => Serial_inst1_data_0_rstpot_91
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT41 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(3),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(2),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(3)
    );
  Serial_inst1_uart_out_ack_glue_set : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Serial_inst1_pr_state_FSM_FFd3_11,
      I1 => Serial_inst1_pr_state_FSM_FFd2_14,
      I2 => Serial_inst1_uart_out_ack_15,
      O => Serial_inst1_uart_out_ack_glue_set_87
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW1_SW0 : LUT4
    generic map(
      INIT => X"7BFF"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I1 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I2 => Serial_inst1_UART_instance_baud_counter(2),
      I3 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N44
    );
  Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCC4869"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I1 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I2 => Serial_inst1_UART_instance_baud_counter(3),
      I3 => Serial_inst1_UART_instance_uart_rx_bit,
      I4 => N44,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_In
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW5_SW0 : LUT5
    generic map(
      INIT => X"DFEFFFFF"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I1 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I3 => Serial_inst1_UART_instance_baud_counter(2),
      I4 => Serial_inst1_UART_instance_oversample_baud_tick_70,
      O => N46
    );
  Serial_inst1_UART_instance_uart_rx_data_block_7_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEB28"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_data_block(7),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_baud_counter(3),
      I3 => Serial_inst1_UART_instance_uart_rx_bit,
      I4 => N6,
      I5 => N46,
      O => Serial_inst1_UART_instance_uart_rx_data_block_7_rstpot_93
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_SW2 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I1 => Serial_inst1_UART_instance_uart_rx_bit_P_118,
      I2 => Serial_inst1_UART_instance_uart_rx_bit_C_117,
      I3 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => N21
    );
  Serial_inst1_UART_instance_n0283_inv1 : LUT6
    generic map(
      INIT => X"0000002700000000"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I1 => Serial_inst1_UART_instance_uart_rx_bit_P_118,
      I2 => Serial_inst1_UART_instance_uart_rx_bit_C_117,
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I5 => Serial_inst1_UART_instance_oversample_baud_tick_2_134,
      O => Serial_inst1_UART_instance_n0283_inv
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT101 : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I5 => Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT61_26,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(9)
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_rstpot_SW0 : LUT3
    generic map(
      INIT => X"7B"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I1 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I2 => Serial_inst1_UART_instance_baud_counter(2),
      O => N51
    );
  Serial_inst1_UART_instance_uart_rx_count_0_dpot1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA6A9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(0),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N51,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_count_0_dpot1_121
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_rstpot_SW1 : LUT4
    generic map(
      INIT => X"7FDF"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(0),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I3 => Serial_inst1_UART_instance_baud_counter(2),
      O => N53
    );
  Serial_inst1_UART_instance_uart_rx_count_1_dpot1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA6A9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(1),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N53,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_count_1_dpot1_122
    );
  Serial_inst1_UART_instance_Mmux_uart_rx_sample_tick1_rstpot_SW2 : LUT5
    generic map(
      INIT => X"7FFFF7FF"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(1),
      I1 => Serial_inst1_UART_instance_uart_rx_count(0),
      I2 => Serial_inst1_UART_instance_uart_rx_sync_clock(2),
      I3 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd1_60,
      I4 => Serial_inst1_UART_instance_baud_counter(2),
      O => N55
    );
  Serial_inst1_UART_instance_uart_rx_count_2_dpot1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA6A9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_count(2),
      I1 => Serial_inst1_UART_instance_uart_rx_sync_clock(3),
      I2 => Serial_inst1_UART_instance_uart_rx_state_FSM_FFd2_59,
      I3 => Serial_inst1_UART_instance_baud_counter(3),
      I4 => N55,
      I5 => N6,
      O => Serial_inst1_UART_instance_uart_rx_count_2_dpot1_123
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT51_SW2 : LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAA8"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(4),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(3),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(2),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      I5 => Serial_inst1_UART_instance_oversample_baud_counter(5),
      O => N57
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT51_SW3 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(4),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(3),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(2),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(1),
      I4 => Serial_inst1_UART_instance_oversample_baud_counter(0),
      O => N58
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_28_OUT51 : LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
    port map (
      I0 => Serial_inst1_UART_instance_oversample_baud_counter(8),
      I1 => Serial_inst1_UART_instance_oversample_baud_counter(9),
      I2 => Serial_inst1_UART_instance_oversample_baud_counter(6),
      I3 => Serial_inst1_UART_instance_oversample_baud_counter(7),
      I4 => N58,
      I5 => N57,
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_28_OUT(4)
    );
  Serial_inst1_UART_instance_uart_rx_filter_1_C_1_dpot : LUT6
    generic map(
      INIT => X"E698FAFAE698A0A0"
    )
    port map (
      I0 => USB_RS232_RXD_IBUF_2,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113,
      I3 => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116,
      I4 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I5 => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115,
      O => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_dpot_124
    );
  Serial_inst1_UART_instance_uart_rx_filter_1_P_1_dpot : LUT6
    generic map(
      INIT => X"FEEBBE40FE411440"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113,
      I3 => USB_RS232_RXD_IBUF_2,
      I4 => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114,
      I5 => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116,
      O => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_dpot_125
    );
  Serial_inst1_UART_instance_uart_rx_filter_0_C_0_dpot : LUT6
    generic map(
      INIT => X"8FBB8F220EBB0E22"
    )
    port map (
      I0 => USB_RS232_RXD_IBUF_2,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116,
      I3 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I4 => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113,
      I5 => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114,
      O => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_dpot_131
    );
  Serial_inst1_UART_instance_uart_rx_filter_0_P_0_dpot : LUT6
    generic map(
      INIT => X"BB8FBB0E228F220E"
    )
    port map (
      I0 => USB_RS232_RXD_IBUF_2,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115,
      I3 => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      I4 => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113,
      I5 => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114,
      O => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_dpot_132
    );
  Serial_inst1_UART_instance_oversample_baud_tick_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o,
      Q => Serial_inst1_UART_instance_oversample_baud_tick_1_133
    );
  Serial_inst1_UART_instance_oversample_baud_tick_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_BUFG_LUT1,
      D => Serial_inst1_UART_instance_oversample_baud_counter_9_GND_7_o_equal_27_o,
      Q => Serial_inst1_UART_instance_oversample_baud_tick_2_134
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  reset_IBUF_BUFG : BUFG
    port map (
      O => reset_IBUF_BUFG_1,
      I => reset_IBUF_135
    );
  reset_inv341_INV_0 : INV
    port map (
      I => reset_IBUF_BUFG_1,
      O => reset_inv
    );
  Serial_inst1_UART_instance_Mmux_GND_7_o_PWR_7_o_mux_2_OUT11_INV_0 : INV
    port map (
      I => Serial_inst1_UART_instance_baud_counter(0),
      O => Serial_inst1_UART_instance_GND_7_o_PWR_7_o_mux_2_OUT(0)
    );
  Serial_inst1_UART_instance_baud_counter_3_INV_37_o1_INV_0 : INV
    port map (
      I => Serial_inst1_UART_instance_baud_counter(3),
      O => Serial_inst1_UART_instance_baud_counter_3_INV_37_o
    );
  reset_IBUF_BUFG_LUT1_INV_0 : INV
    port map (
      I => reset_IBUF_135,
      O => reset_IBUF_BUFG_LUT1
    );
  Serial_inst1_UART_instance_uart_rx_bit_rstpot : MUXF7
    port map (
      I0 => N60,
      I1 => N61,
      S => Serial_inst1_UART_instance_uart_rx_filter_1_LD_112,
      O => Serial_inst1_UART_instance_uart_rx_bit_rstpot_89
    );
  Serial_inst1_UART_instance_uart_rx_bit_rstpot_F : LUT4
    generic map(
      INIT => X"E8AA"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_bit_C_117,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_1_C_1_113,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_0_C_0_115,
      I3 => Serial_inst1_UART_instance_oversample_baud_tick_70,
      O => N60
    );
  Serial_inst1_UART_instance_uart_rx_bit_rstpot_G : LUT4
    generic map(
      INIT => X"E8AA"
    )
    port map (
      I0 => Serial_inst1_UART_instance_uart_rx_bit_P_118,
      I1 => Serial_inst1_UART_instance_uart_rx_filter_1_P_1_114,
      I2 => Serial_inst1_UART_instance_uart_rx_filter_0_P_0_116,
      I3 => Serial_inst1_UART_instance_oversample_baud_tick_70,
      O => N61
    );

end Structure;

