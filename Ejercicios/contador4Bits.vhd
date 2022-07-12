-- Create Date:    19:57:40 07/11/2022 
-- Design Name: 
-- Module Name:    contador4Bits - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.std_arith.all;

entity contador4Bits is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           clk,LOAD,ENP,RESET : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador4Bits;

architecture Behavioral of contador4Bits is
begin
process(clk,LOAD,ENP,RESET)begin
	if(RESET='1')then
		Q<="0000";
	elsif(clk' event and clk ='1') then
		if(LOAD='0' and ENP='-')then
			Q<=P;
		elsif(LOAD='1' and ENP='0')then
			Q<=Q;
		elsif(LOAD='1' and ENP='1')then
			Q<=Q+1;
		end if;
	end if;
end process;
end Behavioral;

