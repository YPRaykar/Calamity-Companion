-- A VHDL program to implement a simple NOT Gate.
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity FULL_ADDER is						--
	port (I0,I1,I2 : in std_logic;
	       S,C : out std_logic);
end FULL_ADDER;


architecture FUNCTIONALITY of FULL_ADDER is

signal S1:std_logic;
signal C1:std_logic;
signal C2:std_logic;


begin 

    U0 : HALF_ADDER port map(I1,I2,S1,C1);
	 U1 : HALF_ADDER port map(I0,S1,S,C2);
	 U2 : OR_3 port map(C1,C2,C);
end FUNCTIONALITY; 