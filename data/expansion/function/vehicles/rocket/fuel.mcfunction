execute if entity @p[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] unless score @s exp.fuel_level >= @s exp.fuel_max run function expansion:vehicles/rocket/fuel_loop

execute if score @s exp.fuel_level = @s exp.fuel_max run title @p[tag=exp.inside_rocket] title {"text":"Fuel level at 100%","color":"green","bold":true}

# calculate how much blaze powder is still needed
function expansion:vehicles/rocket/calculate_fuel

# gather more fuel title
title @p[tag=exp.inside_rocket] subtitle {"text":" "}
execute unless score @s exp.fuel_level = @s exp.fuel_max run title @p[tag=exp.inside_rocket] title {"translate":"exp_screentxt_nofuel_title","color":"red","bold":true}
execute unless score @s exp.fuel_level = @s exp.fuel_max run title @p[tag=exp.inside_rocket] subtitle [{"text":"You need ","color":"red","bold":true},{"score":{"name":"@s","objective":"exp.counter_1"}},{"text":" more blaze powder","color":"red","bold":true}]

# clear variables
tag @p[tag=exp.fueling_rocket] remove exp.fueling_rocket
scoreboard players reset @s exp.counter_1