library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity action2 is
port(
	clk	:	in std_logic;
	X2	:	in std_logic;
	X2_finish	:	out std_logic;
	rst	:	in std_logic
);end action2;

architecture arch of action2 is
	component action22 port (
		clk : in	std_logic;
		X22	:	in std_logic;
		X22_finish	:	out std_logic;
		rst : in	std_logic
	); 
	end component;
	component action23 port (
		clk : in	std_logic;
		X23	:	in std_logic;
		X23_finish	:	out std_logic;
		rst : in	std_logic
	); 
	end component;
	signal X20 : std_logic := '1';
	signal X21, X22, X23, X24 : std_logic := '0';
begin
	Inst_action22 : action22 port map(
		clk => clk,
		X22 => X22,
		X22_finish => X22_finish,
		rst => rst
	);
	Inst_action23 : action23 port map(
		clk => clk,
		X23 => X23,
		X23_finish => X23_finish,
		rst => rst
	);
	grafcet : process(clk , rst)
	begin
	if rst = '1' then
		X20 <= '1';X21 <= '0'; X22 <= '0'; X23 <= '0'; X24 <= '0'; 
	elsif clk' event and clk = '1' then

	if X20 = '1' and X2 = '1' then
	
		X20 <= '0';
		X21 <= '1';
	
	

	elsif X21 = '1' and R21 = '1' then
	
		X21 <= '0';
		X22 <= '1';
	
	

	elsif X22 = '1' and X224 = '1' then
	
		X22 <= '0';
		X23 <= '1';
	
	

	elsif X23 = '1' and X235 = '1' then
	
		X23 <= '0';
		X24 <= '1';
	
	

	elsif X24 = '1' and true then
	
		X24 <= '0';
		X20 <= '1';
	
	
		X2_fnish <= '1';
	
	
	end if;
	end if;
	end process grafcet;
	 datapath : process(clk)
		begin
		if clk' event and clk = '1' then 
			if X20 = '1' then
				--action20
			elsif X21 = '1' then
				--null;
			elsif X22 = '1' then
				--action22
			elsif X23 = '1' then
				--action23
			elsif X24 = '1' then
				--null;
			end if;
		end if;
	end process datapath;
end arch;