# >>> generated function callers >>>
# Callers for expansion:utilities/error_messages/low_fuel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/rocket/launch_init (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

title @s subtitle {text:" "}
title @s title {translate:"exp_screentxt_launcherror_title",color:"red",bold:true}

# calculate how much blaze powder is still needed
execute store result score #temp exp.counter_1 run clear @s blaze_powder 0
scoreboard players remove #temp exp.counter_1 16
scoreboard players operation #temp exp.counter_1 *= #-1 exp.const
title @s subtitle [{translate:"exp_screentxt_rocket_fuelfail1"},{score:{name:"#temp",objective:"exp.counter_1"}},{translate:"exp_screentxt_rocket_fuelfail2"}]