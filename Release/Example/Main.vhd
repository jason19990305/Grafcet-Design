library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity Main is
port(
	clk	:	in std_logic;
	rst	:	in std_logic
);end Main;

architecture arch of Main is
	component action2 port (
		clk : in	std_logic;
		X2	:	in std_logic;
		X2_finish	:	out std_logic;
		rst : in	std_logic
	); 
	end component;
	signal X0 : std_logic := '1';
	signal X1, X2, X3, X4, X5, X6 : std_logic := '0';
begin
	Inst_action2 : action2 port map(
		clk => clk,
		X2 => X2,
		X2_finish => X2_finish,
		rst => rst
	);
	grafcet : process(clk , rst)
	begin
	if rst = '1' then
		X0 <= '1';X1 <= '0'; X2 <= '0'; X3 <= '0'; X4 <= '0'; X5 <= '0'; X6 <= '0'; 
	elsif clk' event and clk = '1' then

	if X0 = '1' and R0 = '1' then
	
		X0 <= '0';
		X1 <= '1';
	
	

	elsif X1 = '1' and R1 = '1' then
	
		X1 <= '0';
		X2 <= '1';
	
	

	elsif X2 = '1' and  X24 = '1' then
	
		X2 <= '0';
		X3 <= '1';
		X4 <= '1';
	
	

	elsif X3 = '1' and X5 = '1' and R3 = '1' and R5 = '1' then
	
		X3 <= '0';
		X5 <= '0';
		X6 <= '1';
	
	

	elsif X4 = '1' and R4 = '1' then
	
		X4 <= '0';
		X5 <= '1';
	
	

	elsif X6 = '1' and R6 = '1' then
	
		X6 <= '0';
		X0 <= '1';
	
	
	end if;
	end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X0 = '1' then
				--action0
			elsif X1 = '1' then
				--null;
			elsif X2 = '1' then
				--action2
			elsif X3 = '1' then
				--null;
			elsif X4 = '1' then
				--null;
			elsif X5 = '1' then
				--null;
			elsif X6 = '1' then
				--null;
			end if;
		end if;
	end process datapath;
end arch;