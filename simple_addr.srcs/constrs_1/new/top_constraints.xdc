# ===== Clock signal =====
# Zedboard 100 MHz clock is on pin Y9
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# ===== Clock timing =====
# 100 MHz = 10 ns period
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} [get_ports clk]