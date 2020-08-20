-- A VHDL program to implement a simple NOT Gate.
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity XOR_5 is						--
	port (I0,I1 : in std_logic;
	      O0 : out std_logic);
end XOR_5;


architecture FUNCTIONALITY of XOR_5 is

begin 

    O0 <= I0 xor I1;
	 
end FUNCTIONALITY;