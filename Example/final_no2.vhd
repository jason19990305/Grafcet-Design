library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity final_no2 is
port(
	clk	:	in std_logic;
	START	:	in std_logic;
	C		:	in std_logic;
	E		:	in std_logic;
	M		:	out std_logic;
	ALARM	:	out std_logic;
	rst	:	in std_logic
);end final_no2;


architecture arch of final_no2 is
	signal counter : integer;
	signal X0 : std_logic := '1';
	signal X1, X2, X3, X4 : std_logic := '0';
begin
	grafcet : process(clk , rst)
	begin
		if rst = '1' then
			X0 <= '1';X1 <= '0'; X2 <= '0'; X3 <= '0'; X4 <= '0'; 
		elsif clk' event and clk = '1' then
			if X0 = '1' and START = '1' then	
				X0 <= '0';
				X1 <= '1';	

			elsif X1 = '1' and C = '1' then	
				X1 <= '0';
				X2 <= '1';	

			elsif X2 = '1' and  counter>=100 then	
				X2 <= '0';
				X3 <= '1';
				X4 <= '1';	

			elsif X3 = '1' and X4 = '1' and E = '1' then	
				X3 <= '0';
				X4 <= '0';
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
				counter <= 0;
			elsif X2 = '1' then
				counter <= counter+1;
			elsif X3 = '1' then
				M <= 1;
			elsif X4 = '1' then
				ALARM <= '1';
			end if;
		end if;
	end process datapath;
end arch;