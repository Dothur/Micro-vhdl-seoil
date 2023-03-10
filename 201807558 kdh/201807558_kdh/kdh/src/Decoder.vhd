-------------------------------------------------------------------------------
--
-- Title       : Decoder
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\Decoder.vhd
-- Generated   : Thu Nov 17 16:26:13 2022
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
--{entity {Decoder} architecture {Beh}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder is
	 port(
		 d : in STD_LOGIC_VECTOR(3 downto 0);
		 q : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end Decoder;

architecture Beh of Decoder is
begin
process(d)
begin
case d is
when "0000" => q <= "1000000";
when "0001" => q <= "1111001";
when "0010" => q <= "0100100";
when "0011" => q <= "0110000";
when "0100" => q <= "0011001";
when "0101" => q <= "0010010";
when "0110" => q <= "0000010";
when "0111" => q <= "1011000";
when "1000" => q <= "0000000";
when "1001" => q <= "0011000";
when others => q <= "0110000";
end case;
end process;
end Beh;

