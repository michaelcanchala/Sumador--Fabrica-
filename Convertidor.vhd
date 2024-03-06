library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Convertidor is

	port
	(
		-- Input ports
		A, B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		-- Output ports
		UN : out std_logic_vector (6 downto 0);
		DC : out std_logic_vector (6 downto 0)
	);
end Convertidor;

architecture arch_Convertidor of Convertidor is
 
	Component FullAdder4Bits 
	port(	-- Input ports
			A, B : in std_logic_vector (3 downto 0);
			Cin : in std_logic;
			-- Output ports
			Sum : out std_logic_vector (4 downto 0));
	end Component;

	Component BCD7Seg
	port(	-- Input ports
			IA : in STD_LOGIC;
			IB : in STD_LOGIC;
			IC : in STD_LOGIC;
			ID : in STD_LOGIC;
			-- Output ports
			F : out std_logic_vector (6 downto 0));
	end component;
	
	Component Conversor
	port(	-- Input ports
			Sum_Con : in std_logic_vector (4 downto 0);
			-- Output ports
			Dec : out std_logic_vector (3 downto 0);
			Uni : out std_logic_vector (3 downto 0));
end component;
	
	
	signal Sum_4Bits : std_logic_vector (4 downto 0);
	signal BCD_UN,BCD_DC : std_logic_vector (3 downto 0);
	
	
begin

	A4 : FullAdder4Bits port map (A, B, Cin, Sum_4Bits);
	Sum4 : Conversor port map (Sum_4Bits, BCD_DC, BCD_UN);
	BCDDC : BCD7Seg port map (BCD_DC(3),BCD_DC(2),BCD_DC(1),BCD_DC(0),DC);
	BCDUN : BCD7Seg port map (BCD_UN(3),BCD_UN(2),BCD_UN(1),BCD_UN(0),UN);
	
end arch_Convertidor;