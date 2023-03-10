-------------------------------------------------------------------------------
--
-- Title       : key
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\key.vhd
-- Generated   : Thu Dec  1 14:00:27 2022
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
--{entity {key} architecture {key}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity key is
	 port(
		 KEY_OUT : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end key;

architecture key of key is
begin

process
begin
KEY_OUT <= "000000000000", "000000000001" after 3010 ns;
wait;
end process;

end key;
