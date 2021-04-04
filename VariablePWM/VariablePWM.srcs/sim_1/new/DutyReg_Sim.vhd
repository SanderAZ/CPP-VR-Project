----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2021 03:48:23 PM
-- Design Name: 
-- Module Name: DutyReg_Sim - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DutyReg_Sim is
--  Port ( );
end DutyReg_Sim;

architecture Behavioral of DutyReg_Sim is

signal swsel_tb, swfine_tb, btnup_tb, btndown_tb: std_logic;
signal clk_tb: std_logic:= '1';
constant clock_period:time:=10ns;

signal seltype_tb: std_logic_vector(1 downto 0);
signal dutyout_tb: std_logic_vector(7 downto 0);
signal dutybcdout_tb: std_logic_vector(9 downto 0);

component DutyReg is
    Port ( 
        clk, sw_sel, sw_fine, btn_up, btn_down: in std_logic;
        sel_type: out std_logic_vector(1 downto 0);
        duty_out: out std_logic_vector(7 downto 0);
        dutybcd_out: out std_logic_vector(9 downto 0)
    );
end component;

begin

CLK_GEN: process
begin
    clk_tb <= not clk_tb;
    wait for clock_period/2;
end process;

REG: DutyReg
    port map(
        clk => clk_tb,
        sw_sel => swsel_tb,
        sw_fine => swfine_tb,
        btn_up => btnup_tb,
        btn_down => btndown_tb,
        sel_type => seltype_tb,
        duty_out => dutyout_tb,
        dutybcd_out => dutybcdout_tb
    );
    
TEST: process
    begin
    swsel_tb <= '1';
    swfine_tb <= '0';
    wait for clock_period * 5;
    
    btnup_tb <= '1';
    wait for clock_period;
    btnup_tb <= '0';
    wait for clock_period*5;
    
    btnup_tb <= '1';
    wait for clock_period;
    btnup_tb <= '0';
    wait for clock_period*5;
    
    btnup_tb <= '1';
    wait for clock_period;
    btnup_tb <= '0';
    wait for clock_period*5;
    end process;

end Behavioral;
