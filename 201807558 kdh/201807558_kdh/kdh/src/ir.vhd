-------------------------------------------------------------------------------
--
-- Title       : IR
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\ir.vhd
-- Generated   : Thu May 18 01:11:26 2022
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
--{entity {IR} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity IR is
Port ( CLK : In std_logic;
IR_IN : In std_logic_vector (11 downto 0);
LD : In std_logic;
IR_OUT : Out std_logic_vector (11 downto 0) );
end IR;
architecture BEHAVIORAL of IR is
begin
process
begin
wait until clk ='1';
if LD='1' then
IR_OUT <= IR_IN;
end if;
end process;
end BEHAVIORAL;