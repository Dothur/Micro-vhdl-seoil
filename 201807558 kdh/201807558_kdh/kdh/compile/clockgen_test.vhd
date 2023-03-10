-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\compile\clockgen_test.vhd
-- Generated   : Thu Nov 17 15:28:56 2022
-- From        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\clockgen_test.bde
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

entity clockgen_test is 
end clockgen_test;

architecture clockgen_test of clockgen_test is

---- Component declarations -----

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

---- Signal declarations used on the diagram ----

signal NET613 : STD_LOGIC;
signal NET625 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : CLOCKGEN
  port map(
       clk => NET613,
       reset => NET625
  );

U2 : micro
  port map(
       CLK => NET613,
       RESET => NET625
  );


end clockgen_test;
