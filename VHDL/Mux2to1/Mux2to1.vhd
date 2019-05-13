LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity mux2to1 is 

port( 
	D1, D2      : IN     STD_LOGIC_vector(23 downto 0); 
	MX_OUT		: OUT 	STD_LOGIC_VECTOR(23 downto 0);
	SEL			: IN		STD_LOGIC
);

end mux2to1;
	
architecture arch_mux of mux2to1 is 

--variable buffer1, buffer2, buffer3, buffer4, buffer5 : std_logic_vector(23 downto 0);

begin

--- Data ready ---- 





--memory: process (buffer1, buffer2, buffer3, buffer4,)
	--			begin
		--		if (clk'event and sel) then 
			--	Buffer1 :=D1		
			--	Buffer2 :=Buffer1 
			--	end process memor

MX_OUT <= D2 when (SEL = '1') else D1;
	
end arch_mux;