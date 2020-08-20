library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity HALF_ADDER is						--
	port (I0,I1 : in std_logic;
	       S,C : out std_logic);
end HALF_ADDER;


architecture FUNCTIONALITY of HALF_ADDER is

begin 

    U0 : XOR_5 port map(I0,I1,S);
	 U1 : AND_2 port map(I0,I1,C);
end FUNCTIONALITY; 