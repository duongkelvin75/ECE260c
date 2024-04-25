onbreak resume
onerror resume
vsim -voptargs=+acc work.Farrow_Canonic_tb

add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/clk
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/reset
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/clk_enable
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/In1
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/In2
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/ce_out
add wave sim:/Farrow_Canonic_tb/u_Farrow_Canonic/Out1
add wave sim:/Farrow_Canonic_tb/Out1_ref
run -all
