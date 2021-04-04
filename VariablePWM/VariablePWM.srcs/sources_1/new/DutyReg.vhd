----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2021 09:58:40 PM
-- Design Name: 
-- Module Name: DutyReg - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DutyReg is -- This module acts as a register to store the desired duty cycle.
    Port ( 
        clk, sw_sel, sw_fine, btn_up, btn_down: in std_logic;
        sel_type: out std_logic_vector(1 downto 0);
        duty_out: out std_logic_vector(7 downto 0);
        dutybcd_out: out std_logic_vector(9 downto 0)
    );
end DutyReg;

architecture Behavioral of DutyReg is

component BCD_8bit is
    Port ( BCD_in  : in  STD_LOGIC_VECTOR(7 downto 0);
           BCD_out : out STD_LOGIC_VECTOR(9 downto 0));
end component;

signal BCD: std_logic_vector(9 downto 0):= b"0000000000";
signal Duty: std_logic_vector(7 downto 0):= x"00";
type states is (s0, s1, s2);
signal ps: states := s0;

begin

BCDGEN: BCD_8bit
    port map(
    BCD_in => Duty,
    BCD_out => BCD
    );


STATEMACHINE: process(clk, sw_sel, sw_fine) -- Moore Machine
    begin
        if(rising_edge(clk)) then
            case ps is
            when s0 => -- Home state
                sel_type <= b"00";
                if(sw_sel = '1' and sw_fine = '1') then
                    ps <= s2;
                elsif(sw_sel = '1' and sw_fine = '0') then
                    ps <= s1;
                end if;
                
            when s1 => -- Select state (Increments of 10)
                sel_type <= b"01";
                if(btn_up = '1') then
                    if(Duty > 90) then Duty <= Duty - x"5A";
                    else Duty <= Duty + x"0A"; end if;
                end if;
                if(btn_down = '1') then
                    if(Duty < 10) then Duty <= Duty + x"5A";
                    else Duty <= Duty - x"0A"; end if;
                end if;
                if(sw_sel = '0') then
                    ps <= s0;
                elsif(sw_fine = '1') then
                    ps <= s2;
                end if;
            
            when s2 => -- Fine Select State (Increments of 1)
                sel_type <= b"11";
                if(btn_up = '1') then
                    if(Duty = 100) then Duty <= x"00";
                    else Duty <= Duty + x"01"; end if;
                end if;
                if(btn_down = '1') then
                    if(Duty = 0) then Duty <= x"64"; --Note: 64 in hex is 100 in binary
                    else Duty <= Duty - x"01"; end if;
                end if;
                if(sw_sel = '0') then
                    ps <= s0;
                elsif(sw_fine = '0') then
                    ps <= s1;
                end if;
            end case;
        end if;
    duty_out <= Duty;
    dutybcd_out <= BCD;
    end process;
end Behavioral;
