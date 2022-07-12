-- Create Date:    20:11:30 07/11/2022 
-- Design Name: 
-- Module Name:    ejemploGenerico - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejemploGenerico is
Generic(contador_valor: integer:=511);
Port ( clk,ld,clr,en : in  STD_LOGIC;
       data : in integer range 0 to contador_valor;
           Q : inout integer range 0 to contador_valor);
end ejemploGenerico;

architecture Behavioral of ejemploGenerico is
signal contador_signal: integer range 0 to contador_valor;
begin
process(clk,en,ld,clr)
begin
if(clr='0')then
contador_signal<=0;
elsif (clk' event and clk='1')then
	if en ='1' then
	if ld='0' then
	contador_signal<=data;
	else
	contador_signal<=data;
	end if;
	end if;
	end if;
	end process;
end Behavioral;

