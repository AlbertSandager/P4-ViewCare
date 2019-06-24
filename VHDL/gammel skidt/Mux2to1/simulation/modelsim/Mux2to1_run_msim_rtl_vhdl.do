transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Jesper/Documents/GitHub/P4-ViewCare/VHDL/Mux2to1/Mux2to1.vhd}

