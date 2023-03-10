-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : kdh
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\compile\7_Seg_Top.vhd
-- Generated   : Thu Dec  1 14:23:34 2022
-- From        : D:\201807558_micro_kdh\201807558 kdh\201807558_kdh\kdh\src\7_Seg_Top.bde
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

entity \7_Seg_Top\ is 
end \7_Seg_Top\;

architecture \7_Seg_Top\ of \7_Seg_Top\ is

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
component Bin2BCD
  port(
       d : in STD_LOGIC_VECTOR(11 downto 0);
       q : out STD_LOGIC_VECTOR(11 downto 0)
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
component Decoder
  port(
       d : in STD_LOGIC_VECTOR(3 downto 0);
       q : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component ext_bi_buf
  port(
       BUF_IN : in STD_LOGIC_VECTOR(11 downto 0);
       EN : in STD_LOGIC;
       BID_BUS : inout STD_LOGIC_VECTOR(11 downto 0);
       BUF_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component IO_MUX
  port(
       RD_SEL : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR(11 downto 0);
       B : in STD_LOGIC_VECTOR(11 downto 0);
       MUX_OUT : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
component key
  port(
       KEY_OUT : out STD_LOGIC_VECTOR(11 downto 0)
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
component split
  port(
       d : in STD_LOGIC_VECTOR(11 downto 0);
       q1 : out STD_LOGIC_VECTOR(3 downto 0);
       q2 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal CLK : STD_LOGIC;
signal NET641 : STD_LOGIC;
signal NET671 : STD_LOGIC;
signal NET674 : STD_LOGIC;
signal NET935 : STD_LOGIC;
signal NET962 : STD_LOGIC;
signal RESET : STD_LOGIC;
signal BUS700 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS703 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS719 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS727 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS739 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS747 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS820 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS887 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS891 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS899 : STD_LOGIC_VECTOR(11 downto 0);

begin

----  Component instantiations  ----

U1 : micro
  port map(
       CLK => CLK,
       RESET => RESET,
       read => NET962,
       write => NET671,
       mem_addr => BUS700,
       mem_data => BUS703
  );

U10 : IO_MUX
  port map(
       RD_SEL => NET935,
       A => BUS891,
       B => BUS899,
       MUX_OUT => BUS887
  );

U11 : key
  port map(
       KEY_OUT => BUS899
  );

U12 : ext_bi_buf
  port map(
       BUF_IN => BUS887,
       EN => NET962,
       BID_BUS => BUS703,
       BUF_OUT => BUS820
  );

U2 : CISC_MEMORY
  port map(
       MEM_CLK => NET641,
       READ => NET962,
       WRITE => NET671,
       MEM_ADDR => BUS700,
       MEM_DATA_IN => BUS820,
       MEM_DATA_OUT => BUS891
  );

U3 : addr_decoder
  port map(
       WRITE => NET671,
       WRITE_EN => NET674,
       MEM_ADDR => BUS700,
       READ => NET962,
       READ_EN => NET935
  );

U4 : CLOCKGEN
  port map(
       clk => clk,
       mem_clk => NET641,
       reset => reset
  );

U5 : data_latch
  port map(
       CLK => CLK,
       EN => NET674,
       RESET => RESET,
       LATCH_IN => BUS703,
       LATCH_OUT => BUS719
  );

U6 : Bin2BCD
  port map(
       d => BUS719,
       q => BUS727
  );

U7 : split
  port map(
       d => BUS727,
       q1 => BUS739,
       q2 => BUS747
  );

U8 : Decoder
  port map(
       d => BUS739
  );

U9 : Decoder
  port map(
       d => BUS747
  );


end \7_Seg_Top\;
