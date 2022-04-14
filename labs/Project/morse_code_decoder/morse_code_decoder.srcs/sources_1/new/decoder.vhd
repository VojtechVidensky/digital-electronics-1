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
        cnt_o    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);
        char	 : out std_logic_vector(2 - 1 downto 0)
    );
end entity decoder;

------------------------------------------------------------
-- Architecture body for n-bit counter
------------------------------------------------------------
architecture behavioral of decoder is

    -- Local counter
    signal s_cnt_local : unsigned(g_CNT_WIDTH - 1 downto 0);

begin
    decoder : process(input)
    begin
        if (input = '0') then
        	if (s_cnt_local < "1111") then
            	char <= "01";
            elsif (s_cnt_local > "1111") then
            	char <= "11";
            end if;
            s_cnt_local <= (others => '0');
        end if;
    end process decoder;

    -- Output must be retyped from "unsigned" to "std_logic_vector"
    cnt_o <= std_logic_vector(s_cnt_local);

end architecture behavioral;