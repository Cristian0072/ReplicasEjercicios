-- Create Date:    21:19:11 07/09/2022 
-- Design Name: 
-- Module Name:    latch - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch is
	port(x, control: in std_logic;
		  z: out std_logic);
end latch;

architecture Behavioral of latch is
begin
	z <= x when(control='1');
end Behavioral;