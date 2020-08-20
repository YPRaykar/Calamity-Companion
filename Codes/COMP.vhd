library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity COMP is
port (A,B:in std_logic_vector(3 downto 0);F,G,H:out std_logic);
end COMP;

architecture FUNC of COMP is
signal I1,EQ,EQ2,B_NOT:std_logic_vector(3 downto 0);
signal F_1,ff,hh,F_2,F1,F2,F3,F31,H1,H2,H_NOT,F_NOT: std_logic;

begin
A_geq_B_BANK:

for i in 0 to 3 generate
U1:NOT_1 port map(B(i),B_NOT(i));
U2: AND_2 port map(B_NOT(i),A(i),I1(i));
end generate;

EQ_BANK:
for i in 0 to 3 generate
U0:XOR_5 port map(A(i),B(i),EQ2(i));
U01:NOT_1 port map(EQ2(i),EQ(i));
end generate;

T0: AND_2 port map(EQ(0),EQ(1),H1);
T1: AND_2 port map(EQ(2),EQ(3),H2);
T2: AND_2 port map(H1,H2,Hh);


T3: AND_2 port map(EQ(3),I1(2),F2);
T4: AND_2 port map(H2,I1(1),F1);
T5: AND_2 port map(H2,EQ(1),F31);
T6: AND_2 port map(F31,I1(0),F3);


T7: OR_3 port map(I1(3),F1,F_1);
T8: OR_3 port map(F2,F3,F_2);
T9: OR_3 port map(F_1,F_2,Ff);
F<=ff;
H<=hh;
T10: NOT_1 port map(Ff,F_NOT);
T11: NOT_1 port map(Hh,H_NOT);
T12: AND_2 port map(H_NOT,F_NOT,G);

end FUNC;
