# Constraints for CLK
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]

# Constraints for SW0
set_property PACKAGE_PIN R17 [get_ports {in0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in0[0]}]

# Constraints for SW1
set_property PACKAGE_PIN U20 [get_ports {in0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in0[1]}]

# Constraints for SW2
set_property PACKAGE_PIN R16 [get_ports {in0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in0[2]}]

# Constraints for SW3
set_property PACKAGE_PIN N16 [get_ports {in0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in0[3]}]

# Constraints for SW4
set_property PACKAGE_PIN R14 [get_ports {in1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[0]}]

# Constraints for SW5
set_property PACKAGE_PIN P14 [get_ports {in1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[1]}]

# Constraints for SW6
set_property PACKAGE_PIN L15 [get_ports {in1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[2]}]

# Constraints for SW7
set_property PACKAGE_PIN M15 [get_ports {in1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[3]}]

# Constraints for SW8
set_property PACKAGE_PIN T10 [get_ports {in2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[0]}]

# Constraints for SW9
set_property PACKAGE_PIN T12 [get_ports {in2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[1]}]

# Constraints for SW10
set_property PACKAGE_PIN T11 [get_ports {in2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[2]}]

# Constraints for SW11
set_property PACKAGE_PIN T14 [get_ports {in2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[3]}]

# Constraints for SW12 (actually, BTN0)
set_property PACKAGE_PIN W14 [get_ports {in3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in3[0]}]

# Constraints for SW13 (actually, BTN1)
set_property PACKAGE_PIN W13 [get_ports {in3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in3[1]}]

# Constraints for SW14 (actually, BTN2)
set_property PACKAGE_PIN P15 [get_ports {in3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in3[2]}]

# Constraints for SW15 (actually, BTN3)
set_property PACKAGE_PIN M14 [get_ports {in3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in3[3]}]

# Constraints for CA
set_property PACKAGE_PIN K14 [get_ports {sseg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[6]}]

# Constraints for CB
set_property PACKAGE_PIN H15 [get_ports {sseg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[5]}]

# Constraints for CC
set_property PACKAGE_PIN J18 [get_ports {sseg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[4]}]

# Constraints for CD
set_property PACKAGE_PIN J15 [get_ports {sseg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[3]}]

# Constraints for CE
set_property PACKAGE_PIN M17 [get_ports {sseg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[2]}]

# Constraints for CF
set_property PACKAGE_PIN J16 [get_ports {sseg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[1]}]

# Constraints for CG
set_property PACKAGE_PIN H18 [get_ports {sseg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sseg[0]}]

# Constraints for DP
set_property PACKAGE_PIN K18 [get_ports dp]
set_property IOSTANDARD LVCMOS33 [get_ports dp]

# Constraints for AN0
set_property PACKAGE_PIN K19 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]

# Constraints for AN1
set_property PACKAGE_PIN H17 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]

# Constraints for AN2
set_property PACKAGE_PIN M18 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]

# Constraints for AN3
set_property PACKAGE_PIN L16 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
