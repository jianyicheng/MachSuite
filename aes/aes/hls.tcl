open_project aes_syn

add_files aes.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c -cflags "-I ../../common" -csimflags "-I ../../common"

#add_files -tb aes_test.c

set_top aes256_encrypt_ecb

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
source ./aes_dir
#config_rtl -reset all -reset_level low
csynth_design
cosim_design

exit
