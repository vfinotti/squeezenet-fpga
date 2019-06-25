-------------------------------------------------------------------------------
-- Title      : Generic, vendorless PLL
-- Project    :
-------------------------------------------------------------------------------
-- File       : generic_sys_pll.vhd
-- Author     : Vitor Finotti
-- Company    :
-- Created    : 2019-06-18
-- Last update: 2019-06-18
-- Platform   :
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: This module creates a vendorless module, intended to replace
-- vendor specific pll implementations. This module should only work on
-- simulations
-------------------------------------------------------------------------------
-- Copyright (c) 2019
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author    Description
-- 2019-06-18  1.0      vfinotti  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generic_sys_pll is
  generic(
    -- 200 MHz input clock
    g_clkin_period   : real    := 5.000;
    g_divclk_divide  : integer := 1;
    g_clkbout_mult_f : integer := 5;
    -- Reference jitter
    g_ref_jitter     : real    := 0.010;
    -- 100 MHz output clock
    g_clk0_divide_f  : integer := 10;
    -- 200 MHz output clock
    g_clk1_divide    : integer := 5;
    g_clk2_divide    : integer := 6);
  port(
    rst_i    : in  std_logic := '0';
    clk_i    : in  std_logic := '0';
    clk0_o   : out std_logic := '0';
    clk1_o   : out std_logic := '0';
    clk2_o   : out std_logic := '0';
    locked_o : out std_logic := '1');
end entity generic_sys_pll;


architecture syn of generic_sys_pll is

  signal half_period0 : real := g_clkin_period*(real(g_divclk_divide)/real(g_clkbout_mult_f))*real(g_clk0_divide_f);
  signal half_period1 : real := g_clkin_period*(real(g_divclk_divide)/real(g_clkbout_mult_f))*real(g_clk1_divide);
  signal half_period2 : real := g_clkin_period*(real(g_divclk_divide)/real(g_clkbout_mult_f))*real(g_clk2_divide);

  signal s_clk0 : std_logic := '0';
  signal s_clk1 : std_logic := '0';
  signal s_clk2 : std_logic := '0';

begin

  s_clk0 <= not s_clk0 after half_period0 * 1 ns;
  s_clk1 <= not s_clk1 after half_period1 * 1 ns;
  s_clk2 <= not s_clk2 after half_period2 * 1 ns;

  clk0_o <= s_clk0;
  clk1_o <= s_clk1;
  clk2_o <= s_clk2;


end syn;
