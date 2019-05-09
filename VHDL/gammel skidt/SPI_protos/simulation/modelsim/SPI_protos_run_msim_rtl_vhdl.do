transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Albert Sandager/Documents/GitHub/P4-ViewCare/VHDL/SPI_protos/SPI_protos.vhd}

