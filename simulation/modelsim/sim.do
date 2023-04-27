vsim -voptargs=+acc work.test_seven_segment
view structure wave signals

do wave.do

log -r *
run -all

