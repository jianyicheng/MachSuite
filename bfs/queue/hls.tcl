open_project bfs_syn

add_files bfs.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb bfs.c -cflags "-I ../../common" -csimflags "-I ../../common"

set_top bfs

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
source ./bfs_dir
csim_design
csynth_design
cosim_design

exit
