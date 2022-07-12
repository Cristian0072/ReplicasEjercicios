-- Create Date:    14:53:48 07/10/2022 
-- Design Name: 
-- Module Name:    diagrama - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity diagrama is
	port(clk,x: in std_logic;
				z: out std_logic);
end diagrama;

architecture Behavioral of diagrama is
type estados is (d0,d1,d2,d3);
signal edo_futuro, edo_presente:estados;
begin
proceso1: process(edo_presente,x) begin
	case edo_presente is
		when d0 =>z <= '0';
			if x='1' then
			edo_futuro <= dl;
			else
			edo_futuro <= d0;
			end if;
		when dl =>z <='0';
			if x='1' then
			edo_futuro <= d2;
			else
			edo_futuro <= dl;
			end if;
		when d2 => z <='0';
			if x='1' then
			edo_futuro <= d3;
			else
			edo_futuro <= d0;
			end if
		when d3=>
			if x='1' then
			edo_futuro <= d0;
			z <='1';
		else
			edo_futuro <= d3;
			z <='0';
		end if;	
	end case;
end process proceso1;
proceso2:process(clk) begin
	if(clk' event and clk='1')then
		edo_presente<= edo_futuro;
	end if;
end process proceso2;
end Behavioral;

