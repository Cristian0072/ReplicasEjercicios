-- Create Date:    14:29:26 07/10/2022 
-- Design Name: 
-- Module Name:    registro4Bits - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro4Bits is
	port (D: in std_logic_vector(3 downto 0);
			clk, CLR: in std_logic;
			Q,Qn: inout std_logic_vector(3 downto 0));
end registro4Bits;

architecture Behavioral of registro4Bits is
begin
	process (clk,CLR) begin
	if (clk' event and clk='1') then
		if (CLR = '1') then
		Q<=D;
		Qn<= not Q;
		else
		Q<= "0000";
		Qn<= "1111";
		end if;
	end if;
	end process;
end Behavioral;