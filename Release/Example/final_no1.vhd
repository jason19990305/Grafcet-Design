library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity main is
port(
	clk	:	in std_logic;
	x		:	in	std_logic;
	Output	:	out std_logic;
	rst	:	in std_logic
);end main;

architecture arch of main is
	signal X0 : std_logic := '1';
	signal X1, X2, X3, X4 : std_logic := '0';
begin
	grafcet : process(clk , rst)
	begin
		if rst = '1' then
			X0 <= '1';X1 <= '0'; X2 <= '0'; X3 <= '0'; X4 <= '0'; 
		elsif clk' event and clk = '1' then
			if X0 = '1' and 1 then	
				X0 <= '0';
				X1 <= '1';		

			elsif X1 = '1' then	
				if x = '0' then		
					X1 <= '0';
					X2 <= '1';
				
				elsif x = '1'  then		
					X1 <= '0';
					X3 <= '1';
				
				end if;	

			elsif X2 = '1' and x = '0' then	
				X2 <= '0';
				X4 <= '1';

			elsif X3 = '1' then	
				if x = '0' then		
					X3 <= '0';
					X2 <= '1';
				
				elsif x = '1'  then		
					X3 <= '0';
					X1 <= '1';
				
				end if;
			elsif X4 = '1' then
				if x = '0' then		
					X4 <= '0';
					X2 <= '1';
				
				elsif x = '1'  then		
					X4 <= '0';
					X3 <= '1';
				
				end if;	
			end if;
		end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X0 = '1' then
				null;
			elsif X1 = '1' then
				Output <= '0';
			elsif X2 = '1' then
				Output <= '0';
			elsif X3 = '1' then
				Output <= '0';
			elsif X4 = '1' then
				Output <= '0';
			end if;
		end if;
	end process datapath;
end arch;