-------------------------------------------------------------------------------
--
-- Title       : BI_BUF
-- Design      : kdh
-- Author      : pc
-- Company     : pc
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Desktop\201807558 kdh\201807558_kdh\kdh\src\bi_buf.vhd
-- Generated   : Thu May 18 00:37:11 2022
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
--{entity {BI_BUF} architecture {BEHAVIORAL}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
entity BI_BUF is
Port ( BUF_IN : In std_logic_vector (11 downto 0);
EN : In std_logic;
BID_BUS : InOut std_logic_vector (11 downto 0);
BUF_OUT : Out std_logic_vector (11 downto 0) );
end BI_BUF;
architecture BEHAVIORAL of BI_BUF is
begin
process (en, buf_in, bid_bus)
begin
if en='1' then
bid_bus <= buf_in;
buf_out <= buf_in;
else
bid_bus <= "ZZZZZZZZZZZZ";
buf_out <= bid_bus;
end if;
end process;
end BEHAVIORAL;