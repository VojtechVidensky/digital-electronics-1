------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------
-- Entity declaration for n-bit counter
------------------------------------------------------------
entity decoder is
    generic(
        g_CNT_WIDTH : natural := 4 -- Number of bits for counter
    );
    port(
        clk      : in  std_logic;  -- Main clock
        reset    : in  std_logic;  -- Synchronous reset
        input     : in  std_logic;  -- Enable input
        cnt_o    : in std_logic_vector(g_CNT_WIDTH - 1 downto 0);
        char	 : out std_logic
    );
end entity decoder;

------------------------------------------------------------
-- Architecture body for n-bit counter
------------------------------------------------------------
architecture behavioral of decoder is

    -- Local counter
begin    
    decoder : process(input)
    begin
        if (input = '0') then
        	if (cnt_o < "1111") then
            	char <= '0';
            elsif (cnt_o > "1111") then
            	char <= '1';
            end if;
        end if;
    end process decoder;
    
end architecture behavioral;