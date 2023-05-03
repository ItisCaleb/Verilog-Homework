vsim -voptargs=+acc work.testcounter
view structure wave signals

do wave.do

log -r *
run -all

