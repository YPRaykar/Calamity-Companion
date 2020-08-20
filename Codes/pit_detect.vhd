library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.cs254.all;

entity pit_detect is
port(distance1,distance2: in std_logic_vector(7 downto 0);
     R,Y,G, B : out std_logic);
end pit_detect;

architecture behave of pit_detect is
   signal depth : std_logic_vector (7 downto 0);
	signal C: std_logic;
	SIGNAL F1,G1,H1,F2,G2,H2,F3,G3,H3 : std_logic;


BEGIN
	U2 : NINEBIT_SUB port map(distance2,distance1,depth,C);
	U31 : ninebit_comp port map(distance2,distance1,F3,G3,H3);
	U3 : ninebit_comp port map(depth,"00001111",F1,G1,H1);
	U4 : ninebit_comp port map(depth,"00011110",F2,G2,H2);
	
	process(F2,H2,F1,H1,G3)
		begin
			if G3 = '1' then
			   Y<='0';
				R<='0';
				B<='0';
				G<='1';
			else	
				 if F2='1' or H2='1' then
					R<='1';
					B<='1';
					G<='0';
					Y<='0';
				elsif F1='1' or H1='1' then
					Y<='1';
					R<='0';
					B<='0';
					G<='0';
					
				else
					Y<='0';
					R<='0';
					B<='0';
					G<='1';
				end if;
			end if;
	end process;
		 
end behave;