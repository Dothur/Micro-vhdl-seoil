-------------------------------------------------------------------------------
--
-- Title       : addr_decoder
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\addr_decoder.vhd
-- Generated   : Thu Nov 17 13:54:48 2022
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
--{entity {addr_decoder} architecture {addr_decoder}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity addr_decoder is
	 port(
		 WRITE : in STD_LOGIC;
		 WRITE_EN : out STD_LOGIC;
		 MEM_ADDR : in STD_LOGIC_VECTOR(7 downto 0);
		 READ : in STD_LOGIC;
		 READ_EN : out STD_LOGIC
	     );
end addr_decoder;
										   

architecture addr_decoder of addr_decoder is
begin		  
process(MEM_ADDR, WRITE, READ) 
begin	
	
if (MEM_ADDR = "11111001") and (WRITE <= '1') then
	WRITE_EN <= '1';
	READ_EN <= '0';
elsif (MEM_ADDR = "11111000") and (READ <= '1') then
	WRITE_EN <= '0';
	READ_EN <= '1';
else	  
	WRITE_EN <= '0';
	READ_EN <= '0';
end if;
end process;
end addr_decoder;
