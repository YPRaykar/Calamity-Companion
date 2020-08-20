
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity NINEBIT_SUB is						--
	port (A,B : in std_logic_vector(7 downto 0);
	      S : out std_logic_vector(7 downto 0);
			Carr : out std_logic);
end NINEBIT_SUB;


architecture FUNCTIONALITY of NINEBIT_SUB is

signal C:std_logic_vector(7 downto 0);
signal B1:std_logic_vector(7 downto 0);

component FULL_ADDER is						--
	port (I0,I1,I2 : in std_logic;
	       S,C : out std_logic);
end component;



begin 
      B1(0)<=NOT B(0);
		B1(1)<=NOT B(1);
		B1(2)<=NOT B(2);
		B1(3)<=NOT B(3);
		B1(4)<=NOT B(4);
		B1(5)<=NOT B(5);
		B1(6)<=NOT B(6);
		B1(7)<=NOT B(7);
		
		U0 : FULL_ADDER port map(A(0),B1(0),'1',S(0),C(0));	
      U1 : FULL_ADDER port map(A(1),B1(1),C(0),S(1),C(1));
		U2 : FULL_ADDER port map(A(2),B1(2),C(1),S(2),C(2));
		U3 : FULL_ADDER port map(A(3),B1(3),C(2),S(3),C(3));
      U4 : FULL_ADDER port map(A(4),B1(4),C(3),S(4),C(4));	
      U5 : FULL_ADDER port map(A(5),B1(5),C(4),S(5),C(5));
		U6 : FULL_ADDER port map(A(6),B1(6),C(5),S(6),C(6));
		U7 : FULL_ADDER port map(A(7),B1(7),C(6),S(7),C(7));
		
      Carr<=C(7);
end FUNCTIONALITY; 