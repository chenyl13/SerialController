
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TOP is
    port 
    (  
        -- General
        clk                :   in      std_logic;
        reset              :   in      std_logic;    
        USB_RS232_RXD      :   in      std_logic;
        USB_RS232_TXD      :   out     std_logic
		  --led					:  out		std_logic
    );
end TOP;

architecture RTL of TOP is

    component Serial is
			Port (  clk : in  STD_LOGIC;
					  reset : in  STD_LOGIC; 
					  en_r : in STD_LOGIC; --serialController
					  en_w : in STD_LOGIC; --serialController
					  RX : in  STD_LOGIC;
					  TX : out  STD_LOGIC;
					  data_bus : inout  STD_LOGIC_VECTOR(31 downto 0);
					  read_ready : out  STD_LOGIC
				  );
    end component Serial;
    
    signal data_bus : std_logic_vector(31 downto 0);
	 signal en_r, en_w, read_ready, rst : std_logic;
    signal count : integer range 0 to 10000 := 0;
	 signal num : std_logic_vector(31 downto 0) := X"000000AA";
begin

	 rst <= not reset;

    Serial_inst1 : Serial
    port map    (  
            -- General
            clk      		=> clk,
            reset    		=> rst, 
            RX					=> USB_RS232_RXD,
				TX					=> USB_RS232_TXD,
				en_r				=> en_r,
				en_w 				=> en_w,
				data_bus			=> data_bus,
				read_ready		=> read_ready
    );
    
	 process(clk)
	 begin
			if rising_edge(clk) then
				if rst = '1' then
					count <= 0;
				else
					count <= count+1;
				end if;
			end if;
	 end process;
		
	process(count)
	begin
		if count = 0 then
			data_bus <= num;
		elsif count = 2 then
			en_w <= '1';
		elsif count = 4 then
			en_w <= '0';
			data_bus <= (others => 'Z');
		end if;
	end process;
end RTL;