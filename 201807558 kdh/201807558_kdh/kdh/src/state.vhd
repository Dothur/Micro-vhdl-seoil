-------------------------------------------------------------------------------
--
-- Title       : STATE
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\state.vhd
-- Generated   : Thu May 18 01:51:57 2022
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
--{entity {STATE} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity STATE is
Port ( CLK : In std_logic;
RESET : In std_logic;
STATE_IN : In std_logic_vector (1 downto 0);
STATE_OUT : Out std_logic_vector (1 downto 0) );
end STATE;
architecture BEHAVIORAL of STATE is
begin
process (clk, reset, state_in)
begin
if reset='1' then
state_out <= "00";
elsif (clk'event and clk='1') then
state_out <= state_in;
end if;
end process;
end BEHAVIORAL;