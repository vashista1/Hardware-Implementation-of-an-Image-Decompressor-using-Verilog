

# add waves to waveform
add wave Clock_50
add wave -divider {some label for my divider}
add wave uut/SRAM_we_n
add wave -decimal uut/SRAM_write_data
add wave -hexadecimal uut/SRAM_read_data
add wave -hexadecimal uut/SRAM_address
add wave -unsigned uut/SRAM_address

# Milestone 1 Waveforms
add wave -divider {Milestone 1}
add wave uut/M1_unit/state
add wave -decimal uut/M1_unit/Uaddr
add wave -decimal uut/M1_unit/Vaddr
add wave -decimal uut/M1_unit/Yaddr
add wave -unsigned uut/M1_unit/colourAddr
add wave -hexadecimal uut/M1_unit/Y
add wave -hexadecimal uut/M1_unit/Uread
add wave -hexadecimal uut/M1_unit/Vread
add wave -hexadecimal uut/M1_unit/U
add wave -hexadecimal uut/M1_unit/V
add wave -hexadecimal uut/M1_unit/Ymult
add wave -decimal uut/M1_unit/Umult
add wave -decimal uut/M1_unit/Vmult
# add wave -hexadecimal uut/M1_unit/Uprime
# add wave -hexadecimal uut/M1_unit/Vprime
add wave -decimal uut/M1_unit/Uprime
add wave -decimal uut/M1_unit/Vprime
add wave uut/M1_unit/caseToggle
add wave -unsigned uut/M1_unit/caseNum
add wave -decimal uut/M1_unit/rowNum
add wave -decimal uut/M1_unit/op1
add wave -decimal uut/M1_unit/op2
add wave -decimal uut/M1_unit/evenPixel
add wave -decimal uut/M1_unit/oddPixel
