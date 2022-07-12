-- Create Date:    14:40:01 07/10/2022 
-- Design Name: 
-- Module Name:    contador - Behavioral 
-- Project Name: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.std_arith.all;

entity contador is
	port (clk: in std_logic;
			q: inout std_logic_vector(3 downto 0));
end contador;

architecture Behavioral of contador is
begin
	process(clk) begin
	if(clk' event and clk ='1') then 
		q<=q+1;
	end if;
	end process;
end Behavioral;

