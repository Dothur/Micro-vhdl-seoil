-------------------------------------------------------------------------------
--
-- Title       : PC_LOGIC
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\pc_logic.vhd
-- Generated   : Thu May 18 01:31:10 2022
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
--{entity {PC_LOGIC} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity PC_LOGIC is
Port ( CLK : In std_logic;
INC_PC : In std_logic;
LD_PC : In std_logic;
PC_IN : In std_logic_vector (7 downto 0);
RESET : In std_logic;
PC_OUT : Out std_logic_vector (7 downto 0));
end PC_LOGIC;
architecture BEHAVIORAL of PC_LOGIC is
signal pc_out_reg : std_logic_vector (7 downto 0);

begin
process(clk, inc_pc, ld_pc, pc_in, reset)
begin
if reset='1' then
pc_out_reg <= "00000000";
elsif (clk'event and clk='1') then
if inc_pc ='1' then
pc_out_reg <=pc_out_reg + "00000001";
elsif ld_pc = '1' then
pc_out_reg <= pc_in;
end if;
end if;
end process;
pc_out <= pc_out_reg;
end BEHAVIORAL;