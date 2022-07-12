-- Create Date:    19:41:15 07/11/2022 
-- Design Name: 
-- Module Name:    registroSerie - Behavioral
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registroSerie is
port (d, clk: in std_logic; 
		q: out std_logic);
end registroSerie;

architecture Behavioral of registroSerie is
signal a,b:std_logic; 
 begin 
 process (clk) 
 begin 
	if (clk' event and clk = '1') then 
	a<=d; 
	b<=a; 
	q<=b; 
	end if;
end process;
end Behavioral;