library ieee;
use ieee.std_logic_1164.all;

package CS254 is

component NOT_1 is 
    port(  I0: in std_logic;
			  O0: out std_logic);
end component;

component AND_2 is 
    port(  I0,I1: in std_logic;
			  O0: out std_logic);
end component;

component OR_3 is 
    port(  I0,I1: in std_logic;
			  O0: out std_logic);
end component;

component NAND_4 is						--
	port (I0,I1 : in std_logic;
	      O0 : out std_logic);
end component;

component XOR_5 is						--
	port (I0,I1 : in std_logic;
	      O0 : out std_logic);
end component;

component BITWISE_AND is						--
	port (A,B : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0));			
end component;

component BITWISE_OR is						--
	port (A,B : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0));
			
end component;

component BITWISE_XOR is						--
	port (A,B : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0));
			
end component;

component BITWISE_NOT is						--
	port (A : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0));
			
end component;

component HALF_ADDER is
	port (I0,I1 : in std_logic;
	       S,C : out std_logic);
end component;

component FULL_ADDER is
	port (I0,I1,I2 : in std_logic;
	       S,C : out std_logic);
end component;

component FOURBIT_ADDER is						--
	port (A,B : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0);
			C3 : out std_logic);
end component;


component FOURBIT_SUB is						--
	port (A,B : in std_logic_vector(3 downto 0);
	      S : out std_logic_vector(3 downto 0);
			C3 : out std_logic);
end component;

component MUX_2X1 is -- Entity declaration
port(I0, I1, S0 : in std_logic; -- Inputs of the multiplexer
O0 : out std_logic); -- Output of the multiplexer
end component ;

component MUX_4X1 is -- Entity declaration
port(I0,I1,I2,I3: in std_logic; -- Inputs of the multiplexer
      S : in std_logic_vector(1 downto 0);
		O0 : out std_logic); -- Output of the multiplexer
end component;

component MUX_16X4 is -- Entity declaration
		port(I0, I1, I2, I3 : in std_logic_vector(3 downto 0);-- Inputs of the multiplexer
		S : in std_logic_vector(1 downto 0);
		O0 : out std_logic_vector(3 downto 0)); -- Output of the multiplexer
end component;

component SHIFTER is -- Entity declaration
		port(A : in std_logic_vector(3 downto 0);-- Inputs of the multiplexer
		S : in std_logic_vector(1 downto 0);
		D : in std_logic;
		O0 : out std_logic_vector(3 downto 0)); -- Output of the multiplexer
end component;

component XS3_ADD_SUB is -- Entity declaration
port(A, B : in std_logic_vector(3 downto 0); -- Input XS3 numbers
A_SBAR : in std_logic; -- 1 for addition, 0 for subtraction
Y : out std_logic_vector(7 downto 0)); -- Output BCD number

end component;

component BCD2SSD is -- Entity declaration
port(X : in std_logic_vector(3 downto 0); -- Input BCD number
Y : out std_logic_vector(6 downto 0); -- Output SSD code
FI : out std_logic); -- Invalid input indicator
end component;

component D_FF is -- Entity declaration
port(D : in std_logic; -- Data input of the D flipflop
CLK : in std_logic; -- Clock input of the D flipflop
PREN : in std_logic; -- Preset input of the D flipflop
CLRN : in std_logic; -- Clear input of the D flipflop
Q : buffer std_logic; -- Q output of the D flipflop
QN : out std_logic); -- Q_bar output of the D flipflop
end component;

component range_sensor is
port(fpgaclk : in std_logic;
     pulse : in std_logic;
	  trigger_gen : out std_logic;
	  distance : out std_logic_vector(8 downto 0));
end component;

component ninebit_comp is
port(A,B : in std_logic_vector(7 downto 0);
     F,G,H : OUT std_logic);
end component;

component NINEBIT_SUB is						--
	port (A,B : in std_logic_vector(7 downto 0);
	      S : out std_logic_vector(7 downto 0);
			Carr : out std_logic);
end component;

component counter123 is 
generic (n: positive :=10);
port(clk : in std_logic;
	  enable : in std_logic;
	  reset : in std_logic;
	  counter_output : out std_logic_vector(n-1 downto 0));
end component;

component trigger_generator is
	port (clk: in std_logic;
			trigger : out std_logic);
end component;

component Distance_calculation is
	port ( clk : in std_logic;
			 Calculation_Reset : in std_logic;
			 pulse : in std_logic ;
			 distance : out std_logic_vector(8 downto 0));
end component;
 

end package;
