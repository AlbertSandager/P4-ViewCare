library ieee;
use ieee.std_logic_1164.all;

entity I2S is
generic (
	i2s_d_width : integer := 24;
	BITPERFRAME : integer := 48
	);
	
port (
	clk : in std_logic;
	bclk : in std_logic;
	lrclk : in std_logic;
	reset : in std_logic;
	adc_data : in std_logic;
	l_ready : out std_logic;
	r_ready : out std_logic;
	l_rx_data : out std_logic_vector(i2s_d_width - 1 downto 0);
	r_rx_data : out std_logic_vector(i2s_d_width - 1 downto 0)
	);
end I2S;

architecture Behavorial of I2S is
	signal valid : std_logic;
	signal l_sr_in : std_logic_vector(i2s_d_width - 1 downto 0);
	signal r_sr_in : std_logic_vector(i2s_d_width - 1 downto 0);
	signal neg_edge, pos_edge : std_logic;
	signal lr_edge : std_logic;
	signal new_sample : std_logic;
	signal zbclk, zzbclk, zzzbclk : std_logic;
	signal zlrclk, zzlrclk, zzzlrclk : std_logic;
	signal cnt : integer range 0 to 31 := 0;
	
begin


	detect_edge : process(clk)
    begin
    	if rising_edge(clk) then
        	zbclk <= bclk;
            zzbclk <= zbclk;
            zzzbclk <= zzbclk;
            if zzbclk = '1' and zzzbclk = '0' then
            	pos_edge <= '1';
            elsif zzbclk = '0' and zzzbclk = '1' then
            	neg_edge <= '1';
            else
            	pos_edge <= '0';
                neg_edge <= '0';
            end if;
        end if;
    end process;

	 
    detect_lr_edge : process(clk)
    begin
    	if rising_edge(clk) then
        	zlrclk <= lrclk;
            zzlrclk <= zlrclk;
            zzzlrclk <= zzlrclk;
            if zzlrclk /= zzzlrclk then
            	lr_edge <= '1';
            else
            	lr_edge <= '0';
            end if;
        end if;
    end process;

	 
    detect_sample : process(clk)
    begin
    	if rising_edge(clk) then
        	if reset = '0' then 
            	cnt <= 0;
                valid <= '0';
            else
        		if lr_edge = '1' then
        			cnt <= 0;
        		end if;
    			if pos_edge = '1' then
        			if cnt < BITPERFRAME/2 - 1 then
            			cnt <= cnt + 1;
            		end if;
        		end if;
        		if neg_edge = '1' then  	
        			if cnt = 1 then
            			new_sample <= '1';
            		elsif cnt >= i2s_d_width + 1 and cnt < BITPERFRAME/2 - 1 then
            			new_sample <= '0';
            		end if;
        		end if;
            	if cnt = i2s_d_width + 1 and neg_edge = '1' then
					valid <= '1';
            	else
            	  	valid <= '0';
            	end if;
          	end if;
        end if;
    end process;
	 
	 
	sample_ready : process(clk)
	 begin
	 if lrclk = '1' then
	 l_ready <= '1';
	 else
	 l_ready <= '0';
	 end if;
	 if lrclk = '0' then
	 r_ready <= '1';
	 else
	 r_ready <= '0';
	 end if;
	end process;
	 
	 
    l_get_data : process(clk)
    begin
    	if rising_edge(clk) then
    		if pos_edge = '1' and new_sample = '1' and lrclk = '0' then
   	        	-- receive
                l_sr_in <= l_sr_in(l_sr_in'high - 1 downto 0) & adc_data;
        	end if;
       	end if;
   	end process;
		
		l_rx_data <= l_sr_in;
		
		
		
	 r_get_data : process(clk)
    begin
    	if rising_edge(clk) then
    		if pos_edge = '1' and new_sample = '1' and lrclk = '1' then
   	        	-- receive
                r_sr_in <= r_sr_in(r_sr_in'high - 1 downto 0) & adc_data;
        	end if;
       	end if;
   	end process;
		
		r_rx_data <= r_sr_in;
		
	 
end Behavorial;