--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:48 11/16/2015
-- Design Name:   
-- Module Name:   D:/code/git/github/SerialController/input_test_top.vhd
-- Project Name:  SerialController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP
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
 
ENTITY input_test_top IS
END input_test_top;
 
ARCHITECTURE behavior OF input_test_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP
    PORT(
         read_ready : IN  std_logic;
         data_bus : INOUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         USB_RS232_RXD : IN  std_logic;
         USB_RS232_TXD : OUT  std_logic;
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal read_ready : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal USB_RS232_RXD : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(31 downto 0);

 	--Outputs
   signal USB_RS232_TXD : std_logic;
   signal led : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP PORT MAP (
          read_ready => read_ready,
          data_bus => data_bus,
          clk => clk,
          reset => reset,
          USB_RS232_RXD => USB_RS232_RXD,
          USB_RS232_TXD => USB_RS232_TXD,
          led => led
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
      reset <= '0';
      wait for 50 ns;	
		reset <= '1';
      wait for clk_period*2;
		
		read_ready <= '1';
		wait for clk_period;
		read_ready <= '0';
		wait for clk_period;
		data_bus <= X"000000AA";
		
      wait;
   end process;

END;
