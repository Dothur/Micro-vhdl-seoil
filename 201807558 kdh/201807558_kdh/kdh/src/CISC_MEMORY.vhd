-------------------------------------------------------------------------------
--
-- Title       : CISC_MEMORY
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro\201807558 kdh\201807558_kdh\kdh\src\CISC_MEMORY.vhd
-- Generated   : Thu Sep 22 14:41:48 2022
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
--{entity {CISC_MEMORY} architecture {CISC_MEMORY}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
--use IEEE.std_logic_components.all;

entity CISC_MEMORY is
	 port(
		 MEM_CLK : in STD_LOGIC;
		 READ : in STD_LOGIC;
		 WRITE : in STD_LOGIC;
		 MEM_ADDR : in STD_LOGIC_VECTOR(7 downto 0);
		 MEM_DATA_IN : in STD_LOGIC_VECTOR(11 downto 0);
		 MEM_DATA_OUT : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end CISC_MEMORY;
								   
architecture CISC_MEMORY of CISC_MEMORY is

subtype MEM_WORD is std_logic_vector(11 downto 0);
type MEM_TABLE is array(255 downto 0) of MEM_WORD;
signal cells : MEM_TABLE := (
"000000000010", --11111111 번지 : Xn      start!  -- 구구단..! Xn절 로 설정 | 11단 까지 가능
"000000000001", --11111110 번지 : n		            Segment 가 2개 라서 최대 99
"000000000001",	--11111101 번지 : one				 
"000000001010",	--11111100 번지 : Last_n = 10        -- Xn * 9 까지..!
"XXXXXXXXXXXX",	--11111011 번지 : 
"XXXXXXXXXXXX",	--11111010 번지 : tmp
"XXXXXXXXXXXX",	--11111001 번지 : I/O Address(Output)
"XXXXXXXXXXXX",	--11111000 번지 : I/O Address(Input) 
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX", --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX", --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",  --
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"XXXXXXXXXXXX",	--
"000000000000",	--Halt
"011100000000", --Jump start    -- Polling end
"000100000000", --Skip_if_zero				
"010011111100", --Xor Last_n
"011011111110",	--Store n
"001011111101",	--Add one
"010111111110",	--Load n
"011011111001",	--Store I/O_address(Output) 
"010111111010",	--Load temp
"011011111010",	--Store temp
"100011111110",	--Mul n (count)
"010111111111",	--Load Xn
"010111111000");--start: Load I/O_address(Input) --Polling start
begin	 
	
process
	variable address : integer range 0 to 255;
	begin
		wait until MEM_CLK'event and MEM_CLK='1';
		address := conv_integer(unsigned(mem_addr));
		if read='1' then
			MEM_DATA_OUT <= cells(address);
		elsif write ='1' then
			cells(address) <= MEM_DATA_IN;
		else
		mem_data_out <= "ZZZZZZZZZZZZ";
	end if;
end process;
end CISC_MEMORY;
