vsim -voptargs=+acc work.test_id
view structure wave signals

do wave.do

log -r *
run -all

