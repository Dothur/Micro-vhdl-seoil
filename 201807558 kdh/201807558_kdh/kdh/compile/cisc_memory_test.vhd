-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\compile\cisc_memory_test.vhd
-- Generated   : Thu Dec  1 14:24:45 2022
-- From        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\cisc_memory_test.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity cisc_memory_test is 
end cisc_memory_test;

architecture cisc_memory_test of cisc_memory_test is

---- Component declarations -----

component CISC_MEMORY
  port(
       MEM_CLK : in STD_LOGIC;
       READ : in STD_LOGIC;
       WRITE : in STD_LOGIC;
       MEM_ADDR : in STD_LOGIC_VECTOR(7 downto 0);
       MEM_DATA_IN : in STD_LOGIC_VECTOR(11 downto 0);
       MEM_DATA_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component CLOCKGEN
  port(
       clk : out STD_LOGIC;
       mem_clk : out STD_LOGIC;
       reset : out STD_LOGIC
  );
end component;
component micro
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       read : out STD_LOGIC;
       write : out STD_LOGIC;
       mem_addr : out STD_LOGIC_VECTOR(7 downto 0);
       mem_data : inout STD_LOGIC_VECTOR(11 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal NET622 : STD_LOGIC;
signal NET634 : STD_LOGIC;
signal NET642 : STD_LOGIC;
signal NET650 : STD_LOGIC;
signal NET658 : STD_LOGIC;
signal BUS712 : STD_LOGIC_VECTOR(7 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : CISC_MEMORY
  port map(
       MEM_CLK => NET634,
       READ => NET642,
       WRITE => NET650,
       MEM_ADDR => BUS712,
       MEM_DATA_IN(11) => Dangling_Input_Signal,
       MEM_DATA_IN(10) => Dangling_Input_Signal,
       MEM_DATA_IN(9) => Dangling_Input_Signal,
       MEM_DATA_IN(8) => Dangling_Input_Signal,
       MEM_DATA_IN(7) => Dangling_Input_Signal,
       MEM_DATA_IN(6) => Dangling_Input_Signal,
       MEM_DATA_IN(5) => Dangling_Input_Signal,
       MEM_DATA_IN(4) => Dangling_Input_Signal,
       MEM_DATA_IN(3) => Dangling_Input_Signal,
       MEM_DATA_IN(2) => Dangling_Input_Signal,
       MEM_DATA_IN(1) => Dangling_Input_Signal,
       MEM_DATA_IN(0) => Dangling_Input_Signal
  );

U2 : micro
  port map(
       CLK => NET622,
       RESET => NET658,
       read => NET642,
       write => NET650,
       mem_addr => BUS712
  );

U3 : CLOCKGEN
  port map(
       clk => NET622,
       mem_clk => NET634,
       reset => NET658
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end cisc_memory_test;
