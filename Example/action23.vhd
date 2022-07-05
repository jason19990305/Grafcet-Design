library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity action23 is
port(
	clk	:	in std_logic;
	X23	:	in std_logic;
	X23_finish	:	out std_logic;
	rst	:	in std_logic
);end action23;

architecture arch of action23 is
	signal X230 : std_logic := '1';
	signal X231, X232, X233, X234, X235 : std_logic := '0';
begin
	grafcet : process(clk , rst)
	begin
	if rst = '1' then
		X230 <= '1';X231 <= '0'; X232 <= '0'; X233 <= '0'; X234 <= '0'; X235 <= '0'; 
	elsif clk' event and clk = '1' then

	if X230 = '1' and X23 = '1' then
	
		X230 <= '0';
		X231 <= '1';
	
	

	elsif X231 = '1' then
	
		if R231_1 = '1' then
		
			X231 <= '0';
			X232 <= '1';
		
		elsif R231_2 = '1'  then
		
			X231 <= '0';
			X234 <= '1';
		
		end if;
	

	elsif X232 = '1' and R232 = '1' then
	
		X232 <= '0';
		X233 <= '1';
	
	

	elsif X233 = '1' and R233 = '1' then
	
		X233 <= '0';
		X235 <= '1';
	
	

	elsif X234 = '1' and R234 = '1' then
	
		X234 <= '0';
		X235 <= '1';
	
	


	elsif X235 = '1' and true then
	
		X235 <= '0';
		X230 <= '1';
	
	
		X23_fnish <= '1';
	
	
	end if;
	end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X230 = '1' then
				--action230
			elsif X231 = '1' then
				--null;
			elsif X232 = '1' then
				--null;
			elsif X233 = '1' then
				--null;
			elsif X234 = '1' then
				--null;
			elsif X235 = '1' then
				--null;
			end if;
		end if;
	end process datapath;
end arch;