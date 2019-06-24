LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity mux2to1 is 

port( 
	D1, D2      : IN     STD_LOGIC_VECTOR (23 downto 0); 
	MX_OUT		: OUT 	STD_LOGIC_VECTOR (23 downto 0);
	SEL			: IN		STD_LOGIC
);

end mux2to1;
	
architecture arch_mux of mux2to1 is 


begin

--- Data ready ---- 

MX_OUT <= D2 when (SEL = '1') else D1; -- Sender D1 til MX_OUT når SEL er 0, og D2 til MX_OUT når SEL er 1.
	
end arch_mux;