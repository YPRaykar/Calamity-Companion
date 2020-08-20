library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity ninebit_comp is
port(A,B : in std_logic_vector(7 downto 0);
     F,G,H : OUT std_logic);
end ninebit_comp;

architecture behave of ninebit_comp is
	
SIGNAL 	A1,A2,B1,B2 : std_logic_vector(3 downto 0);
SIGNAL 	F1,G1,H1,F2,G2,H2 : std_logic;

COMPONENT COMP is
port (A,B:in std_logic_vector(3 downto 0);F,G,H:out std_logic);
end COMPONENT;

	  
begin
	ASSIGNBANK :
			for i in 0 to 3 generate
			A1(i)<=	A(i);
			B1(i)<= B(i); 
	end generate;
	  
	ASSIGNBANK1 :
		for i in 4 to 7 generate
			A2(i-4)<=	A(i);
			B2(i-4)<= B(i);
		end generate;

	U0 : COMP port map(A2,B2,F1,G1,H1);
	U1 : COMP port map(A1,B1,F2,G2,H2);

	process(F1,G1,F2,G2,A(0),B(0))
	begin
		if F1='1' THEN
			F <= '1';G<='0';H<='0';
		elsif(G1='1') THEN
			F <= '0';G<='1';H<='0';
		else 
		  if F2='1' THEN
			F <= '1';G<='0';H<='0';
		  elsif G2='1' THEN
			F <= '0';G<='1';H<='0';
		  else
				F <= '0';G<='0';H<='1';
			end if;
		end if;
	 end process;
end behave;