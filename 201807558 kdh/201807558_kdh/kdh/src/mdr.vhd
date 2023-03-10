-------------------------------------------------------------------------------
--
-- Title       : MDR
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\mdr.vhd
-- Generated   : Thu May 18 01:25:20 2022
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
--{entity {MDR} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity MDR is
Port ( CLK : In std_logic;
LD : In std_logic;
MDR_IN : In std_logic_vector (11 downto 0);
MDR_OUT : Out std_logic_vector (11 downto 0) );
end MDR;
architecture BEHAVIORAL of MDR is
begin
process
begin
wait until clk ='1';
if LD='1' then
MDR_OUT <= MDR_IN;
end if;
end process;
end BEHAVIORAL;