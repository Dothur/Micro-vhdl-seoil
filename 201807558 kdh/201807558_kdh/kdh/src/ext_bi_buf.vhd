-------------------------------------------------------------------------------
--
-- Title       : ext_bi_buf
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\ext_bi_buf.vhd
-- Generated   : Thu Dec  1 13:54:31 2022
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
--{entity {ext_bi_buf} architecture {ext_bi_buf}}
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity ext_bi_buf is
	Port ( BUF_IN : In std_logic_vector (11 downto 0);
	    	EN : In std_logic;
			BID_BUS : InOut std_logic_vector (11 downto 0);
			BUF_OUT : Out std_logic_vector (11 downto 0) );
end ext_bi_buf;

--}} End of automatically maintained section

architecture ext_bi_buf of ext_bi_buf is
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

end ext_bi_buf;
