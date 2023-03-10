-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\compile\micro.vhd
-- Generated   : Thu Nov 17 15:43:03 2022
-- From        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\micro.bde
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

entity micro is
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       read : out STD_LOGIC;
       write : out STD_LOGIC;
       mem_addr : out STD_LOGIC_VECTOR(7 downto 0);
       mem_data : inout STD_LOGIC_VECTOR(11 downto 0)
  );
end micro;

architecture micro of micro is

---- Component declarations -----

component ACC
  port(
       ACC_IN : in STD_LOGIC_VECTOR(11 downto 0);
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       RESET : in STD_LOGIC;
       ACC_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component ADDR_MUX
  port(
       A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR(7 downto 0);
       SEL : in STD_LOGIC;
       MUX_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component ALU
  port(
       A : in STD_LOGIC_VECTOR(11 downto 0);
       B : in STD_LOGIC_VECTOR(11 downto 0);
       OP : in STD_LOGIC_VECTOR(3 downto 0);
       ALU_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component BI_BUF
  port(
       BUF_IN : in STD_LOGIC_VECTOR(11 downto 0);
       EN : in STD_LOGIC;
       BID_BUS : inout STD_LOGIC_VECTOR(11 downto 0);
       BUF_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component control_logic
  port(
       OP : in STD_LOGIC_VECTOR(3 downto 0);
       PSTATE : in STD_LOGIC_VECTOR(1 downto 0);
       ZERO : in STD_LOGIC;
       DOUT_EN : out STD_LOGIC;
       INC : out STD_LOGIC;
       LD_ACC : out STD_LOGIC;
       LD_IR : out STD_LOGIC;
       LD_MDR : out STD_LOGIC;
       LD_PC : out STD_LOGIC;
       NSTATE : out STD_LOGIC_VECTOR(1 downto 0);
       RD : out STD_LOGIC;
       SEL : out STD_LOGIC;
       WR : out STD_LOGIC
  );
end component;
component FLAG
  port(
       ALU_OUT : in STD_LOGIC_VECTOR(11 downto 0);
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       FLAG : out STD_LOGIC
  );
end component;
component IR
  port(
       CLK : in STD_LOGIC;
       IR_IN : in STD_LOGIC_VECTOR(11 downto 0);
       LD : in STD_LOGIC;
       IR_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component MDR
  port(
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       MDR_IN : in STD_LOGIC_VECTOR(11 downto 0);
       MDR_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component PC_LOGIC
  port(
       CLK : in STD_LOGIC;
       INC_PC : in STD_LOGIC;
       LD_PC : in STD_LOGIC;
       PC_IN : in STD_LOGIC_VECTOR(7 downto 0);
       RESET : in STD_LOGIC;
       PC_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component STATE
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       STATE_IN : in STD_LOGIC_VECTOR(1 downto 0);
       STATE_OUT : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET665 : STD_LOGIC;
signal NET683 : STD_LOGIC;
signal NET695 : STD_LOGIC;
signal NET707 : STD_LOGIC;
signal NET715 : STD_LOGIC;
signal NET723 : STD_LOGIC;
signal NET747 : STD_LOGIC;
signal NET757 : STD_LOGIC;
signal BUS1199 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS781 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS784 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS796 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS843 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS865 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS899 : STD_LOGIC_VECTOR(11 downto 0);
signal data : STD_LOGIC_VECTOR(11 downto 0);

begin

----  Component instantiations  ----

U1 : ACC
  port map(
       ACC_IN => BUS781,
       CLK => CLK,
       LD => NET665,
       RESET => RESET,
       ACC_OUT => BUS1199
  );

U10 : FLAG
  port map(
       ALU_OUT => BUS781,
       CLK => CLK,
       LD => NET665,
       FLAG => NET757
  );

U11 : IR
  port map(
       CLK => CLK,
       IR_IN => BUS899,
       LD => NET695,
       IR_OUT => data
  );

U2 : ADDR_MUX
  port map(
       A => BUS843,
       B(7) => data(7),
       B(6) => data(6),
       B(5) => data(5),
       B(4) => data(4),
       B(3) => data(3),
       B(2) => data(2),
       B(1) => data(1),
       B(0) => data(0),
       SEL => NET747,
       MUX_OUT => mem_addr
  );

U4 : ALU
  port map(
       A => BUS1199,
       B => BUS865,
       OP(3) => data(11),
       OP(2) => data(10),
       OP(1) => data(9),
       OP(0) => data(8),
       ALU_OUT => BUS781
  );

U5 : MDR
  port map(
       CLK => CLK,
       LD => NET683,
       MDR_IN => BUS899,
       MDR_OUT => BUS865
  );

U6 : BI_BUF
  port map(
       BUF_IN => BUS1199,
       EN => NET707,
       BID_BUS => mem_data,
       BUF_OUT => BUS899
  );

U7 : PC_LOGIC
  port map(
       CLK => CLK,
       INC_PC => NET715,
       LD_PC => NET723,
       PC_IN(7) => data(7),
       PC_IN(6) => data(6),
       PC_IN(5) => data(5),
       PC_IN(4) => data(4),
       PC_IN(3) => data(3),
       PC_IN(2) => data(2),
       PC_IN(1) => data(1),
       PC_IN(0) => data(0),
       RESET => RESET,
       PC_OUT => BUS843
  );

U8 : control_logic
  port map(
       OP(3) => data(11),
       OP(2) => data(10),
       OP(1) => data(9),
       OP(0) => data(8),
       PSTATE => BUS796,
       ZERO => NET757,
       DOUT_EN => NET707,
       INC => NET715,
       LD_ACC => NET665,
       LD_IR => NET695,
       LD_MDR => NET683,
       LD_PC => NET723,
       NSTATE => BUS784,
       RD => read,
       SEL => NET747,
       WR => write
  );

U9 : STATE
  port map(
       CLK => CLK,
       RESET => RESET,
       STATE_IN => BUS784,
       STATE_OUT => BUS796
  );


end micro;
