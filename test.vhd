--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:55:40 11/14/2015
-- Design Name:   
-- Module Name:   D:/code/git/stash/serial_controller/test.vhd
-- Project Name:  SerialController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Serial
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Serial
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en_r : IN  std_logic;
         en_w : IN  std_logic;
         RX : IN  std_logic;
         TX : OUT  std_logic;
         data_bus : INOUT  std_logic_vector(31 downto 0);
         read_ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal en_r : std_logic := '0';
   signal en_w : std_logic := '0';
   signal RX : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(31 downto 0);

 	--Outputs
   signal TX : std_logic;
   signal read_ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Serial PORT MAP (
          clk => clk,
          reset => reset,
          en_r => en_r,
          en_w => en_w,
          RX => RX,
          TX => TX,
          data_bus => data_bus,
          read_ready => read_ready
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 50 ns;	
		reset <= '0';
      wait for clk_period*5;
		
		data_bus <= X"00000055";
		wait for clk_period;
		en_w <= '1';
		wait for clk_period*2;
		en_w <= '0';
		
      wait;
   end process;

END;
