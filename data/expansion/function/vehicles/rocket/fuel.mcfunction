# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/fuel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if function expansion:vehicles/rocket/pilot_has_fuel unless score @s exp.fuel_level >= @s exp.fuel_max run function expansion:vehicles/rocket/fuel_loop

execute if score @s exp.fuel_level = @s exp.fuel_max on passengers if entity @s[tag=exp.rocket_seat] on passengers run title @s title {text:"Fuel level at 100%",color:"green",bold:true}

# gather more fuel title
title @s subtitle {text:" "}
execute unless score @s exp.fuel_level = @s exp.fuel_max on passengers if entity @s[tag=exp.rocket_seat] on passengers run title @s title {translate:"exp_screentxt_nofuel_title",color:"red",bold:true}
execute unless score @s exp.fuel_level = @s exp.fuel_max on passengers if entity @s[tag=exp.rocket_seat] on passengers run title @s subtitle [{text:"You need ",color:"red",bold:true},{score:{name:"#temp",objective:"exp.counter_1"}},{text:" more blaze powder",color:"red",bold:true}]

# clear variables
scoreboard players reset #temp exp.counter_1
tag @s remove exp.fueling_rocket