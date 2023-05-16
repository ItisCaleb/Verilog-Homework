vsim -voptargs=+acc work.testRGY
view structure wave signals

do wave.do

log -r *
run -all

