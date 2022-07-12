-- Create Date:    14:15:56 07/10/2022 
-- Design Name: 
-- Module Name:    flipflopSR - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopSR is
	port(S,R,clk: in std_logic;
		  Q,Qn: inout std_logic);
end flipflopSR;

architecture Behavioral of flipflopSR is
begin
	process (clk, S, R)
	begin
	if (clk'event and clk ='1') then
		if (S = '0'and R ='1') then
		Q <='0';
		Qn <='1';
		elsif (S ='1' and R ='0') then
		Q <='1';
		Qn <='0';
		elsif (S ='0' and R='0') then
		Q<=Q;
		Qn<=Qn;
		else
		Q<='-';
		Qn<='-';
		end if;
	end if;
end process;
end Behavioral;