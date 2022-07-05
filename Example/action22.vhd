library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity action22 is
port(
	clk	:	in std_logic;
	X22	:	in std_logic;
	X22_finish	:	out std_logic;
	rst	:	in std_logic
);end action22;

architecture arch of action22 is
	signal X220 : std_logic := '1';
	signal X221, X222, X223, X224 : std_logic := '0';
begin
	grafcet : process(clk , rst)
	begin
	if rst = '1' then
		X220 <= '1';X221 <= '0'; X222 <= '0'; X223 <= '0'; X224 <= '0'; 
	elsif clk' event and clk = '1' then

	if X220 = '1' and R220 = '1' then
	
		X220 <= '0';
		X221 <= '1';
	
	

	elsif X221 = '1' and R221 = '1' then
	
		X221 <= '0';
		X222 <= '1';
	
	

	elsif X222 = '1' and R222 = '1' then
	
		X222 <= '0';
		X223 <= '1';
	
	

	elsif X223 = '1' and R223 = '1' then
	
		X223 <= '0';
		X224 <= '1';
	
	

	elsif X224 = '1' then
	
		if c<0 then
		
			X224 <= '0';
			X220 <= '1';
		22 <= '1';
	
	
		
		elsif c>=0  then
		
			X224 <= '0';
			X222 <= '1';
		
		end if;
	
	end if;
	end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X220 = '1' then
				--action220
			elsif X221 = '1' then
				--null;
			elsif X222 = '1' then
				--null;
			elsif X223 = '1' then
				--null;
			elsif X224 = '1' then
				--null;
			end if;
		end if;
	end process datapath;
end arch;