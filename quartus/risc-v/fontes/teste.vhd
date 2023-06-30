library ieee;
use ieee.std_logic_1164.all;

entity teste is
    generic (
        DATA_WIDTH : positive := 8
    );
    port (
        input_1 : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        input_2 : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        lt      : out std_logic;  -- input_1 < input_2
        eq      : out std_logic;  -- input_1 = input_2
        gt      : out std_logic   -- input_1 > input_2
    );
end entity teste;

architecture Behavioral of teste is
begin
    process(input_1, input_2)
    begin
        if input_1 < input_2 then
            lt <= '1';
            eq <= '0';
            gt <= '0';
        elsif input_1 = input_2 then
            lt <= '0';
            eq <= '1';
            gt <= '0';
        else
            lt <= '0';
            eq <= '0';
            gt <= '1';
        end if;
    end process;
end architecture Behavioral;