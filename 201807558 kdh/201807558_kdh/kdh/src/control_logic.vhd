-------------------------------------------------------------------------------
--
-- Title       : control_logic
-- Design      : kdh
-- Author      : seoil
-- Company     : seoil
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\seoil\Desktop\201807558 kdh\201807558_kdh\kdh\src\control_logic.vhd
-- Generated   : Thu Jun  2 15:27:59 2022
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
--{entity {control_logic} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity CONTROL_LOGIC is
Port ( OP : In std_logic_vector (3 downto 0);
PSTATE : In std_logic_vector (1 downto 0);
ZERO : In std_logic;
DOUT_EN : Out std_logic;
INC : Out std_logic;
LD_ACC : Out std_logic;
LD_IR : Out std_logic;
LD_MDR : Out std_logic;
LD_PC : Out std_logic;
NSTATE : Out std_logic_vector (1 downto 0);
RD : Out std_logic;
SEL : Out std_logic;
WR : Out std_logic );
end CONTROL_LOGIC;

architecture BEHAVIORAL of control_logic is
begin
process(PSTATE, OP, ZERO)
begin
--Instruction Fetch
if pstate="00" then
rd <='1';
wr <='0';
ld_ir<='1';
sel<='0';
inc<='0';
ld_acc<='0';
ld_pc<='0' ;
dout_en<='0';
ld_mdr<='0';
nstate<="01";

-- Instruction Decode
elsif pstate="01" then
rd <='0';
wr <='0';
ld_ir<='0';
sel<='0';
inc<='0';
ld_acc<='0';
ld_pc<='0' ;
dout_en<='0';
ld_mdr<='0';
nstate<="10";

-- Memory Read
elsif pstate="10" then
case op is
-- Halt
when "0000" => 
rd <='0';
wr <='0';
ld_ir<='0';
sel<='0';
inc<='0';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="00";
-- Skip-if-zero
when "0001" =>
rd <='0';
wr <='0';
ld_ir<='0';
sel<='1';
inc<='1';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="11";

-- arithmetic and logic operations
when 
"0010"|"0011"|"0100"|"0101"|"1000"|"1001"|"1010" =>
rd <='1';
wr <='0';
ld_ir<='0';
sel<='1';
inc<='1';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='1';
nstate<="11";
-- Store
when "0110" =>
rd <='0';
wr <='1';
ld_ir<='0';
sel<='1';
inc<='1';
ld_acc<='0';
ld_pc<='0';
dout_en<='1';
ld_mdr<='0';
nstate<="00";

-- Jump 
when "0111" =>
rd <='0';
wr <='0';
ld_ir<='0';
sel<='1';
inc<='0';
ld_acc<='0';
ld_pc<='1';
dout_en<='0';
ld_mdr<='0';
nstate<="00"; 
when others => 
rd <='0';
wr <='0';
ld_ir<='0';
sel<='0';
inc<='0';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="00";
end case;

-- Execution 
else
case op is
-- Skip-if-zero
when "0001" =>
rd <='0';
wr <='0';
ld_ir<='0';
sel<='1';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="00"; 
if zero='1' then inc <= '1';
else inc <='0';
end if;

-- arithmetic and logic operations
when 
"0010"|"0011"|"0100"|"0101"|"1000"|"1001"|"1010" =>
rd <='0';
wr <='0';
ld_ir<='0';
sel<='1';
inc<='0';
ld_acc<='1';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="00";
if zero='1' then inc <= '0';
else inc <='0';
end if;

when others => 
rd <='0';
wr <='0';
ld_ir<='0';
sel<='0';
inc<='0';
ld_acc<='0';
ld_pc<='0';
dout_en<='0';
ld_mdr<='0';
nstate<="00";
if zero='1' then inc <= '0';
else inc <='0';
end if;
end case;
end if; 
end process;
end BEHAVIORAL;
