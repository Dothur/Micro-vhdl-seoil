-------------------------------------------------------------------------------
--
-- Title       : data_latch
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\data_latch.vhd
-- Generated   : Thu Nov 17 14:01:28 2022
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
--{entity {data_latch} architecture {data_latch}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity data_latch is
	 port(
		 CLK : in STD_LOGIC;
		 EN : in STD_LOGIC;
		 RESET : in STD_LOGIC;
		 LATCH_IN : in STD_LOGIC_VECTOR(11 downto 0);
		 LATCH_OUT : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end data_latch;

--}} End of automatically maintained section

architecture data_latch of data_latch is
begin
process
begin
wait until clk ='1';
if RESET='1' then
LATCH_OUT <= "000000000000";
elsif EN='1' then
LATCH_OUT <= LATCH_IN;
end if;
end process;
end data_latch;
