----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2021 09:48:36 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( 
    top_clk, BTNU, BTND: in std_logic;
    SW: in std_logic_vector(1 downto 0);
    SS: out std_logic_vector(6 downto 0);
    AN: out std_logic_vector(7 downto 0);
    DP: out std_logic
    );
end top;

architecture Behavioral of top is

signal BCD: std_logic_vector(9 downto 0);
signal sel: std_logic_vector(1 downto 0);
signal duty: std_logic_vector(7 downto 0);

component DutyReg is
    Port ( 
        clk, sw_sel, sw_fine, btn_up, btn_down: in std_logic;
        sel_type: out std_logic_vector(1 downto 0);
        duty_out: out std_logic_vector(7 downto 0);
        dutybcd_out: out std_logic_vector(9 downto 0)
    );
end component;

component Seven_Seg is
        Port (
           clk: in std_logic;
           seltype: in std_logic_vector(1 downto 0);
           BCDH: in std_logic_vector(1 downto 0);
           BCDO, BCDT: in STD_LOGIC_VECTOR(3 downto 0);
           EN_out       : out std_logic_vector(7 downto 0);
           DP           : out std_logic;
           SSD_out      : out STD_LOGIC_VECTOR(6 downto 0)
         );
end component;

begin

REG: DutyReg
    port map(
        clk => top_clk,
        sw_sel => SW(0),
        sw_fine => SW(1),
        btn_up => BTNU,
        btn_down => BTND,
        sel_type => sel,
        duty_out => duty,
        dutybcd_out => BCD
    );
    
 SSD: Seven_Seg
    port map(
        clk => top_clk,
        seltype => sel,
        BCDO => BCD(3 downto 0),
        BCDT => BCD(7 downto 4),
        BCDH => BCD(9 downto 8),
        EN_out => AN,
        DP => DP,
        SSD_out => SS
    );

end Behavioral;
