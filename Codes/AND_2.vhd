-- A VHDL program to implement a simple NOT Gate.
library ieee;
use ieee.std_logic_1164.all;

entity AND_2 is						--
	port (I0,I1 : in std_logic;
	      O0 : out std_logic);
end AND_2;

architecture FUNCTIONALITY of AND_2 is

begin 
    O0 <= I0 and I1;
end FUNCTIONALITY;