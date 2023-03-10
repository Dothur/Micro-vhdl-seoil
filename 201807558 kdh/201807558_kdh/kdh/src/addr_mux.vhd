-------------------------------------------------------------------------------
--
-- Title       : ADDR_MUX
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\addr_mux.vhd
-- Generated   : Thu May 18 00:04:06 2022
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
--{entity {\ADDR_MUX;\} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity ADDR_MUX is
Port ( A : In std_logic_vector (7 downto 0);
B : In std_logic_vector (7 downto 0);
SEL : In std_logic;
MUX_OUT : Out std_logic_vector (7 downto 0) );
end ADDR_MUX;
architecture BEHAVIORAL of ADDR_MUX is
begin
process (a, b, sel)
begin
if sel = '1' then
mux_out <= b;
else
mux_out <= a;
end if;
end process;
end BEHAVIORAL;