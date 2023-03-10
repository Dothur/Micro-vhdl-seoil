-------------------------------------------------------------------------------
--
-- Title       : IO_MUX
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\IO_MUX.vhd
-- Generated   : Thu Dec  1 13:59:07 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {IO_MUX} architecture {IO_MUX}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity IO_MUX is
	 port(
		 RD_SEL : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(11 downto 0);
		 B : in STD_LOGIC_VECTOR(11 downto 0);
		 MUX_OUT : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end IO_MUX;

architecture IO_MUX of IO_MUX is
begin
	
process (A, B, RD_SEL)
begin
if RD_SEL = '1' then
MUX_OUT <= B;
else
MUX_OUT <= A;
end if;
end process;

end IO_MUX;
