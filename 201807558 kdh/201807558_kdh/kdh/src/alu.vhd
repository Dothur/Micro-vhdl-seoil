-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\alu.vhd
-- Generated   : Thu May 18 00:28:10 2022
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
--{entity {ALU} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity ALU is
Port ( A : In std_logic_vector (11 downto 0);
B : In std_logic_vector (11 downto 0);
OP : In std_logic_vector (3 downto 0);
ALU_OUT : Out std_logic_vector (11 downto 0) );
end ALU;
architecture ALU of ALU is
function ADD(A,B : std_logic_vector)
return std_logic_vector is
variable CARRY:std_logic;
variable SUM:std_logic_vector(A'length-1 downto 0) ;
begin
CARRY := '0';
for i in 0 to A'left loop
SUM(i) := A(i) xor B(i) xor CARRY ;
CARRY :=( A(i) and B(i) ) or ( A(i) and CARRY ) or (CARRY and B(i) ) ;
end loop ;
return SUM ;
end ADD ;	  

begin
process (a, b, op)
begin
case op is
when "0010" =>
alu_out <= ADD(a,b);
when "0011" =>
alu_out <= a and b;
when "0100" =>
alu_out <= a xor b;
when "0101" =>
alu_out <= b;
when "1000" =>  --mul
alu_out <= conv_std_logic_vector(conv_integer(a) * conv_integer(b), 12);
when "1001" =>	--sub
alu_out <= a - b;
when "1010" =>	--div
alu_out <= conv_std_logic_vector(conv_integer(a) / conv_integer(b), 12);
when others =>
alu_out <= b;
end case;
end process;
end ALU;

