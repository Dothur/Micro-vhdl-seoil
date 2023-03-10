-------------------------------------------------------------------------------
--
-- Title       : ACC
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\acc.vhd
-- Generated   : Thu May 18 00:13:51 2022
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
--{entity {ACC} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity ACC is
Port ( ACC_IN : In std_logic_vector (11 downto 0);
CLK : In std_logic;
LD : In std_logic;
RESET : In std_logic;
ACC_OUT : Out std_logic_vector (11 downto 0) );
end ACC;
architecture BEHAVIORAL of ACC is
begin
process
begin
wait until clk ='1';
if RESET='1' then
ACC_OUT <= "000000000000";
elsif LD='1' then
ACC_OUT <= ACC_IN;
end if;
end process;
end BEHAVIORAL;
