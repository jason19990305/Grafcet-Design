library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity final_no3 is
port(
	clk	:	in std_logic;
	PW		:	in	std_logic;
	L		:	in	std_logic;
	R		:	in	std_logic;
	T		:	in integer;
	ReadIR	:	out std_logic;
	turnRight	:	out std_logic;
	turnLeft	:	out std_logic;
	forward	:	out Std_logic;
	rst	:	in std_logic
);end final_no3;

architecture arch of final_no3 is
	signal X0, X1, X2, X3, X4, X5 : std_logic := '0';
	begin
	grafcet : process(clk , rst)
	begin
		if rst = '1' then
			X0 <= '1';X1 <= '0'; X2 <= '0'; X3 <= '0'; X4 <= '0'; X5 <= '0';
		elsif clk' event and clk = '1' then
			if X0 = '1' then	
				if PW = '0' then		
					X0 <= '0';
					X0 <= '1';
				
				elsif PW = '1'  then		
					X0 <= '0';
					X1 <= '1';
				
				end if;	
			elsif X1 = '1' then	
				if L = '0' then		
					X1 <= '0';
					X2 <= '1';
				
				elsif L = '1'  then		
					X1 <= '0';
					X3 <= '1';
				
				end if;
			elsif X2 = '1' then	
				if R = '0' then		
					X2 <= '0';
					X4 <= '1';
				
				elsif R = '1'  then		
					X2 <= '0';
					X5 <= '1';
				
				end if;
			elsif X3 = '1' and T = 2 then	
				X3 <= '0';
				X0 <= '1';	
			

			elsif X4 = '1' and T = 5 then	
				X4 <= '0';
				X0 <= '1';	

			elsif X5 = '1' and T = 2 then	
				X5 <= '0';
				X0 <= '1';	
			
			end if;
		end if;
	end process grafcet;
	datapath : process(clk)
	begin
		if clk' event and clk = '1' then 
			if X0 = '1' then
				null;
			elsif X1 = '1' then
				ReadIR <= '1';
			elsif X2 = '1' then
				ReadIR <= '1';
			elsif X3 = '1' then
				turnRight <= '1';
			elsif X4 = '1' then
				forward <= '1';
			elsif X5 = '1' then
				turnLeft <='1';
			end if;
		end if;
	end process datapath;
end arch;