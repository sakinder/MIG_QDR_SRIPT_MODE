library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package datetime is
  -- Date information
  constant YEAR_INT  : integer                       := 2016;
  constant YEAR_HEX  : std_logic_vector(15 downto 0) := X"2016";
  constant MONTH_INT : integer                       := 10;
  constant MONTH_HEX : std_logic_vector(7 downto 0)  := X"10";
  constant DAY_INT   : integer                       := 17;
  constant DAY_HEX   : std_logic_vector(7 downto 0)  := X"17";
  constant DATE_HEX  : std_logic_vector(31 downto 0) := YEAR_HEX & MONTH_HEX & DAY_HEX;
  -- Time information
  constant HOUR_INT   : integer                       := 13;
  constant HOUR_HEX   : std_logic_vector(7 downto 0)  := X"13";
  constant MINUTE_INT : integer                       := 20;
  constant MINUTE_HEX : std_logic_vector(7 downto 0)  := X"20";
  constant SECOND_INT : integer                       := 49;
  constant SECOND_HEX : std_logic_vector(7 downto 0)  := X"49";
  constant TIME_HEX   : std_logic_vector(31 downto 0) := X"00" & HOUR_HEX & MINUTE_HEX & SECOND_HEX;
  -- Miscellaneous information
  constant EPOCH_INT  : integer := 1476728449;  -- Seconds since 1970-01-01_00:00:00
  constant EPOCH_HEX  : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(EPOCH_INT, 32));
end package;
