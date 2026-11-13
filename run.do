# compilation
    vlog clkg_uf.v -l comp.log
# elaboration
  vsim -voptargs=+acc clkg_uf +freq=200 
  # elaboration result on anotherfile
  #vsim -voptargs=+acc an_tb -l simres.log 
# addwave
  add wave sim:/clkg_uf/*
# run
  run -all
