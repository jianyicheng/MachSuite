open_project sort_syn

set_top ss_sort

add_files sort.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c -cflags "-I ../../common" -csimflags "-I ../../common"

set clock 10
set part "xqzu29dr-ffrf1760-1-i"


open_solution solution
set_part $part
create_clock -period $clock
source ./inline_dir

#config_rtl -reset all -reset_level low
set_clock_uncertainty 0
csynth_design 
cosim_design

exit
