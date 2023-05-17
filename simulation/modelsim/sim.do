vsim -voptargs=+acc work.test_timer
view structure wave signals

do wave.do

log -r *
run -all

