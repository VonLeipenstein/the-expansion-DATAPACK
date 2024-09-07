title @s subtitle {"text":" "}
title @s title {"translate":"exp_screentxt_lowfuel_title","color":"red","bold":true}
# calculate how much blaze powder is still needed
execute on vehicle on vehicle on vehicle run function expansion:vehicles/rocket/calculate_fuel
execute on vehicle on vehicle on vehicle run title @p[tag=exp.clicked] subtitle [{"translate":"exp_screentxt_rocket_fuelfail1"},{"score":{"name":"@s","objective":"exp.counter_1"}},{"translate":"exp_screentxt_rocket_fuelfail2"}]