----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2021 12:31:41 PM
-- Design Name: 
-- Module Name: Seven_Seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Seven_Seg is -- This module controls the 7 segment displays, and outputs current data.
        Port (
           clk: in std_logic;
           seltype: in std_logic_vector(1 downto 0);
           BCDH: in std_logic_vector(1 downto 0);
           BCDO, BCDT: in STD_LOGIC_VECTOR(3 downto 0);
           EN_out       : out std_logic_vector(7 downto 0);
           DP           : out std_logic;
           SSD_out      : out STD_LOGIC_VECTOR(6 downto 0)
         );
end Seven_Seg;

architecture Behavioral of Seven_Seg is


signal counter_out: std_logic_vector(2 downto 0);
signal dout_out: std_logic_vector(5 downto 0);
signal E: std_logic_vector(7 downto 0);


begin

process(clk)
    variable count: std_logic_vector(18 downto 0);
begin
    if(rising_edge(clk)) then
          count := count + 1;   
    end if;
    counter_out <= count(18 downto 16);
    end process;


process(counter_out, BCDO, BCDT, BCDH)
begin
    case counter_out is  
        when "000" => E <= "00000001";
                      dout_out <= '1' & BCDO(3 downto 0) & '1';  
        when "001" => E <= "00000010";
                      dout_out <= '1' & BCDT(3 downto 0) & '1';      
        when "010" => E <= "00000100";
                      dout_out <= '1' & b"00" & BCDH(1 downto 0) & '1';      
        when "011" => E <= "00000000";
                      dout_out <= '0' & "0000" & '0';      
        when "100" => 
                      if(seltype = b"01" or seltype = b"11") then
                          if(seltype = b"01") then
                              E <= "00000000";
                              dout_out <= '0' & "0000" & '0'; 
                          else
                              E <= "00010000";
                              dout_out <= '1' & "1110" & '1';
                          end if;
                      else
                          E <= "00000000";
                      end if;
        when "101" => 
                      if(seltype = b"01" or seltype = b"11") then
                      E <= "00100000";
                          if(seltype = b"01") then
                              dout_out <= '0' & "0010" & '1'; 
                          else
                              dout_out <= '0' & "0001" & '1'; 
                          end if;
                      else
                          E <= "00000000";
                      end if;      
        when "110" => 
                      E <= "01000000";
                      if(seltype = b"01" or seltype = b"11") then
                      E <= "01000000";
                          if(seltype = b"01") then
                              dout_out <= '1' & "1110" & '1'; 
                          else
                              dout_out <= '1' & "0001" & '1'; 
                          end if;
                      else
                          E <= "00000000";
                      end if; 
        when "111" => 
                      E <= "10000000";
                      if(seltype = b"01" or seltype = b"11") then
                      E <= "10000000";
                          if(seltype = b"01") then
                              dout_out <= '1' & "0101" & '1'; 
                          else
                              dout_out <= '1' & "1111" & '1'; 
                          end if;
                      else
                          E <= "00000000";
                      end if;    
        when others => E <= "11111111";    
    end case;
 end process;

En_out <= not E;

process(dout_out) is
begin
    case dout_out(5 downto 1) is
        when "10000" => SSD_out(6 downto 0) <= "0000001";  -- 0
        when "10001" => SSD_out(6 downto 0) <= "1001111";  -- 1
        when "10010" => SSD_out(6 downto 0) <= "0010010";  -- 2
        when "10011" => SSD_out(6 downto 0) <= "0000110";  -- 3
        when "10100" => SSD_out(6 downto 0) <= "1001100";  -- 4
        when "10101" => SSD_out(6 downto 0) <= "0100100";  -- 5
        when "10110" => SSD_out(6 downto 0) <= "0100000";  -- 6
        when "10111" => SSD_out(6 downto 0) <= "0001111";  -- 7
        when "11000" => SSD_out(6 downto 0) <= "0000000";  -- 8
        when "11001" => SSD_out(6 downto 0) <= "0000100";  -- 9
        when "11010" => SSD_out(6 downto 0) <= "0001000";  -- A
        when "11011" => SSD_out(6 downto 0) <= "1100000";  -- B
        when "11100" => SSD_out(6 downto 0) <= "0110001";  -- C
        when "11101" => SSD_out(6 downto 0) <= "1000010";  -- D
        when "11110" => SSD_out(6 downto 0) <= "0110000";  -- E
        when "11111" => SSD_out(6 downto 0) <= "0111000";  -- F
        when "00001" => SSD_out(6 downto 0) <= "1101010";  -- N
        when "00010" => SSD_out(6 downto 0) <= "1110001";  -- L
        when others  => SSD_out(6 downto 0) <= "1111111";  -- off
    end case;
end process;

DP <= dout_out(0);
end Behavioral;