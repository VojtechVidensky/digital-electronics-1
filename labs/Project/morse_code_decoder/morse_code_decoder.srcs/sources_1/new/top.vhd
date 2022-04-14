------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------
-- Entity declaration for n-bit counter
------------------------------------------------------------
entity top is
    generic(
        g_CNT_WIDTH : natural := 4 -- Number of bits for counter
    );
    port(
        clk      : in  std_logic;  -- Main clock
        reset    : in  std_logic;  -- Synchronous reset
        input     : in  std_logic;  -- Enable input
        char	 : out std_logic_vector(2 - 1 downto 0)
    );
end entity top;

architecture Behavioral of top is
signal s_rst : std_logic;
signal s_en : std_logic;
signal s_count_out : std_logic_vector(4 - 1 downto 0);

begin

  c_en : entity work.clock_enable
      port map(
          clk   => clk,
          reset   => s_rst,
          ce_o     => s_en
      );
      
  cnt_up_down : entity work.cnt_up_down
      port map(
          clk      => clk,
          reset    => s_rst,
          input     => input,
          cnt_o    => s_count_out,
      );
end architecture Behavioral;