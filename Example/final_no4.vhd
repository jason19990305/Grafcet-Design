library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity final_no4 is
port(
	clk	:	in std_logic;
	_r : out integer;
	rst	:	in std_logic
);end final_no4;

architecture arch of final_no4 is
	signal X0, X1, X2, X3, X4, X5, X6, X7, X8 : std_logic := '0';
	signal Min,Max : integer;
	type int_array is array(integer range <>) of integer;
	variable x : in_array(0 to 100);
	begin
	grafcet : process(clk , rst)
		begin
		if rst = '1' then
			X0 <= '1';X1 <= '0'; X2 <= '0'; X3 <= '0'; X4 <= '0'; X5 <= '0'; X6 <= '0'; X7 <= '0'; X8 <= '0'; 
		elsif clk' event and clk = '1' then
			if X0 = '1' and 1 then	
				X0 <= '0';
				X1 <= '1';	

			elsif X1 = '1' then	
				if Min > x(i) then		
					X1 <= '0';
					X2 <= '1';
				
				elsif Min <= x(i)  then		
					X1 <= '0';
					X3 <= '1';
				
				end if;
			

			elsif X2 = '1' and true then	
				X2 <= '0';
				X4 <= '1';		

			elsif X3 = '1' and true then	
				X3 <= '0';
				X4 <= '1';
				
			elsif X4 = '1' then	
				if Max < x(i) then		
					X4 <= '0';
					X5 <= '1';
				
				elsif Max >= x(i)  then		
					X4 <= '0';
					X6 <= '1';
				
				end if;	

			elsif X5 = '1' and true then	
				X5 <= '0';
				X7 <= '1';	

			elsif X6 = '1' and true then	
				X6 <= '0';
				X7 <= '1';

			elsif X7 = '1' then	
				if i < 100 then		
					X7 <= '0';
					X1 <= '1';
				
				elsif i >= 100  then		
					X7 <= '0';
					X8 <= '1';
				
				end if;

			elsif X8 = '1' and true then	
				X8 <= '0';
				X0 <= '1';	
			
			end if;
		end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X0 = '1' then
				i <= 0;
				Max <= x(0);
				Min <= x(0);
			elsif X1 = '1' then
				null;
				--Min
			elsif X2 = '1' then
				Min <=x(i);
			elsif X3 = '1' then
				null;
			elsif X4 = '1' then
				null;
				--Max
			elsif X5 = '1' then
				Max <= x(i);
			elsif X6 = '1' then
				null;
			elsif X7 = '1' then
				i <= i + 1;
			elsif X8 = '1' then
				_r <= Max - Min;
			end if;
		end if;
	end process datapath;
end arch;