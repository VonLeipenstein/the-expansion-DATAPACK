title @s subtitle {"text":" "}
title @s title {"translate":"exp_screentxt_lowfuel_title","color":"red","bold":true}
# calculate how much blaze powder is still needed
execute on vehicle on vehicle on vehicle run function expansion:vehicles/rocket/calculate_fuel
execute on vehicle on vehicle on vehicle run title @p subtitle [{"text":"You need ","color":"red","bold":true},{"score":{"name":"@s","objective":"exp.counter_1"}},{"text":" more blaze powder","color":"red","bold":true}]