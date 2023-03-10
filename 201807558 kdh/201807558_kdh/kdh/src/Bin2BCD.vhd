-------------------------------------------------------------------------------
--
-- Title       : Bin2BCD
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\Bin2BCD.vhd
-- Generated   : Thu Nov 17 16:16:43 2022
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
--{entity {Bin2BCD} architecture {beh}}

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Bin2BCD is
	 port(
		 d : in STD_LOGIC_VECTOR(11 downto 0);
		 q : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end Bin2BCD;

architecture beh of Bin2BCD is
begin
process(d)
begin 
if (d >= 100) then
q <= "000000000000";
elsif (d >= 90) then
q <= conv_std_logic_vector(conv_integer(d) + 54,12);
elsif (d >= 80) then
q <= conv_std_logic_vector(conv_integer(d) + 48,12);
elsif (d >= 70) then
q <= conv_std_logic_vector(conv_integer(d) + 42,12);
elsif (d >= 60) then
q <= conv_std_logic_vector(conv_integer(d) + 36,12);
elsif (d >= 50) then
q <= conv_std_logic_vector(conv_integer(d) + 30,12);
elsif (d >= 40) then
q <= conv_std_logic_vector(conv_integer(d) + 24,12);
elsif (d >= 30) then
q <= conv_std_logic_vector(conv_integer(d) + 18,12);
elsif (d >= 20) then
q <= conv_std_logic_vector(conv_integer(d) + 12,12);
elsif (d >= 10) then
q <= conv_std_logic_vector(conv_integer(d) + 6,12);
elsif (d > 0) then
q <= d;
else
q <= "000000000000";
end if;
end process;
end beh;
