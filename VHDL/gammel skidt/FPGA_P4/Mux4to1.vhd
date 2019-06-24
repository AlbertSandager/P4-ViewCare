LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity Mux4to1 is 

port( 
	D1, D2, D3, D4      : IN     STD_LOGIC_vector(23 downto 0); 
	MX_OUT				: OUT 	STD_LOGIC_VECTOR(23 downto 0);
	SEL					: IN STD_LOGIC_VECTOR(1 downto 0)
);

end Mux4to1;
	
architecture Behavorial of Mux4to1 is 

--variable buffer1, buffer2, buffer3, buffer4, buffer5 : std_logic_vector(23 downto 0);

begin

--- Data ready ---- 





--memory: process (buffer1, buffer2, buffer3, buffer4,)
	--			begin
		--		if (clk'event and sel) then 
			--	Buffer1 :=D1		
			--	Buffer2 :=Buffer1 
			--	end process memor

with sel select 

MX_OUT <= D1 when "00",
			 D2 when "01",
			 D3 when "10",
			 D4 when "11";
	
end Behavorial;