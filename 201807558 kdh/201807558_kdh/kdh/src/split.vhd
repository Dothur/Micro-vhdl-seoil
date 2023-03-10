-------------------------------------------------------------------------------
--
-- Title       : split
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\split.vhd
-- Generated   : Thu Nov 17 16:23:26 2022
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
--{entity {split} architecture {split}}

library IEEE;
use IEEE.std_logic_1164.all;

entity split is
	 port(
		 d : in STD_LOGIC_VECTOR(11 downto 0);
		 q1 : out STD_LOGIC_VECTOR(3 downto 0);
		 q2 : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end split; 

architecture split of split is
begin
q1 <= d(7 downto 4);
q2 <= d(3 downto 0);
end split;
