execute if entity @p[nbt={SelectedItem:{id:"minecraft:blaze_powder",Count:16b}}] if score @s exp.fuel_level < @s exp.fuel_max store success score @s exp.bool run item replace entity @p weapon.mainhand with minecraft:air

execute if score @s exp.bool matches 1 run playsound block.brewing_stand.brew block @p
execute if score @s exp.bool matches 1 run scoreboard players operation @s exp.fuel_level = @s exp.fuel_max
execute if score @s exp.fuel_level = @s exp.fuel_max run title @p title {"text":"Fuel level at 100%","color":"green","bold":true}

# gather more fuel title
title @p subtitle {"text":" "}
execute unless score @s exp.bool matches 1 unless score @s exp.fuel_level = @s exp.fuel_max run title @p title {"translate":"exp_screentxt_nofuel_title","color":"red","bold":true}
execute unless score @s exp.bool matches 1 unless score @s exp.fuel_level = @s exp.fuel_max run title @p subtitle {"translate":"exp_screentxt_nofuel_subtitle","color":"red","bold":true}

# clear variables
tag @p[tag=exp.fueling_rocket] remove exp.fueling_rocket
scoreboard players reset @s exp.bool