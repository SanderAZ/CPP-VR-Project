----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2021 09:54:16 PM
-- Design Name: 
-- Module Name: PWM - Behavioral
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

entity PWM is -- This module outputs a PWM signal dependent on the inputted duty cycle.
    Port ( 
        clk     : in std_logic;
        duty    : in std_logic_vector(7 downto 0);
        pwm_out : out std_logic
    );
end PWM;

architecture Behavioral of PWM is

signal DutyReg: std_logic_vector(7 downto 0);

begin


end Behavioral;
