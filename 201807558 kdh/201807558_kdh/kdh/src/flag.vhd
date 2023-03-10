-------------------------------------------------------------------------------
--
-- Title       : FLAG
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\flag.vhd
-- Generated   : Thu May 18 00:48:04 2022
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
--{entity {FLAG} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity FLAG is
Port ( ALU_OUT : In std_logic_vector (11 downto 0);
CLK : In std_logic;
LD : In std_logic;
FLAG : Out std_logic );
end FLAG;
architecture BEHAVIORAL of FLAG is
function DETECT_ZERO(A: std_logic_vector)
return std_logic is
variable ZERO:std_logic;
begin
ZERO := '1';
for i in 0 to A'left loop
ZERO := (NOT A(i)) and ZERO;
end loop;
return ZERO;
end DETECT_ZERO;   
begin
process
begin
wait until clk ='1';
if LD='1' then
FLAG <= DETECT_ZERO(ALU_OUT);
end if;
end process;
end BEHAVIORAL;