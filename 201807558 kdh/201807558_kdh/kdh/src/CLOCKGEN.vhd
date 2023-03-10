-------------------------------------------------------------------------------
--
-- Title       : CLOCKGEN
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\microcpu\201807558_micro\201807558 kdh\201807558_kdh\kdh\src\CLOCKGEN.vhd
-- Generated   : Thu Sep 15 15:17:01 2022
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
--{entity {CLOCKGEN} architecture {CLOCKGEN}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity CLOCKGEN is
	 port(
		 clk : out STD_LOGIC;
		 mem_clk : out STD_LOGIC;
		 reset : out STD_LOGIC
	     );
end CLOCKGEN;

architecture CLOCKGEN of CLOCKGEN is	  
	signal var_clk : std_logic := '0';
	begin
		resetting: process
		begin
			reset <= '1',
				'0' after 120 ns;
			wait;
		end process resetting;	 
		
		clocking: process(var_clk)		
		begin
			var_clk <= not var_clk after 50 ns;
			clk <= var_clk;
			mem_clk <= not var_clk;
		end process clocking;	 
		
end CLOCKGEN;
