-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\compile\IO_ports.vhd
-- Generated   : Thu Dec  1 14:24:02 2022
-- From        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\IO_ports.bde
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

entity IO_ports is 
end IO_ports;

architecture IO_ports of IO_ports is

---- Component declarations -----

component addr_decoder
  port(
       WRITE : in STD_LOGIC;
       WRITE_EN : out STD_LOGIC;
       MEM_ADDR : in STD_LOGIC_VECTOR(7 downto 0);
       READ : in STD_LOGIC;
       READ_EN : out STD_LOGIC
  );
end component;
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
component data_latch
  port(
       CLK : in STD_LOGIC;
       EN : in STD_LOGIC;
       RESET : in STD_LOGIC;
       LATCH_IN : in STD_LOGIC_VECTOR(11 downto 0);
       LATCH_OUT : out STD_LOGIC_VECTOR(11 downto 0)
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

signal CLK : STD_LOGIC;
signal NET628 : STD_LOGIC;
signal NET650 : STD_LOGIC;
signal NET653 : STD_LOGIC;
signal NET661 : STD_LOGIC;
signal RESET : STD_LOGIC;
signal BUS673 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS703 : STD_LOGIC_VECTOR(7 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

---- Declarations for Dangling outputs ----
signal DANGLING_U5_mem_data_3 : STD_LOGIC;
signal DANGLING_U5_mem_data_2 : STD_LOGIC;
signal DANGLING_U5_mem_data_1 : STD_LOGIC;
signal DANGLING_U5_mem_data_0 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : CISC_MEMORY
  port map(
       MEM_CLK => NET653,
       READ => NET628,
       WRITE => NET650,
       MEM_ADDR => BUS703,
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

U2 : addr_decoder
  port map(
       WRITE => NET650,
       WRITE_EN => NET661,
       MEM_ADDR => BUS703,
       READ => Dangling_Input_Signal
  );

U3 : data_latch
  port map(
       CLK => CLK,
       EN => NET661,
       RESET => RESET,
       LATCH_IN(11) => BUS673(7),
       LATCH_IN(10) => BUS673(6),
       LATCH_IN(9) => BUS673(5),
       LATCH_IN(8) => BUS673(4),
       LATCH_IN(7) => BUS673(3),
       LATCH_IN(6) => BUS673(2),
       LATCH_IN(5) => BUS673(1),
       LATCH_IN(4) => BUS673(0),
       LATCH_IN(3) => Dangling_Input_Signal,
       LATCH_IN(2) => Dangling_Input_Signal,
       LATCH_IN(1) => Dangling_Input_Signal,
       LATCH_IN(0) => Dangling_Input_Signal
  );

U4 : CLOCKGEN
  port map(
       clk => clk,
       mem_clk => NET653,
       reset => reset
  );

U5 : micro
  port map(
       CLK => CLK,
       RESET => RESET,
       read => NET628,
       write => NET650,
       mem_addr => BUS703,
       mem_data(11) => BUS673(7),
       mem_data(10) => BUS673(6),
       mem_data(9) => BUS673(5),
       mem_data(8) => BUS673(4),
       mem_data(7) => BUS673(3),
       mem_data(6) => BUS673(2),
       mem_data(5) => BUS673(1),
       mem_data(4) => BUS673(0),
       mem_data(3) => DANGLING_U5_mem_data_3,
       mem_data(2) => DANGLING_U5_mem_data_2,
       mem_data(1) => DANGLING_U5_mem_data_1,
       mem_data(0) => DANGLING_U5_mem_data_0
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end IO_ports;
