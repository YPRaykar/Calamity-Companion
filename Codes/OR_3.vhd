library ieee;
use ieee.std_logic_1164.all;

entity OR_3 is
port(I0 : in std_logic;
     I1 : in std_logic;
	  O0 : out std_logic);
end OR_3;

architecture behave of OR_3 is
begin

	O0<=I1 or I0;

end behave;
	  
