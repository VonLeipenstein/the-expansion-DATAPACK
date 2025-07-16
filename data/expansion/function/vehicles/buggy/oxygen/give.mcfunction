scoreboard players add @s exp.oxygen_lvl 20
execute on vehicle run scoreboard players remove @s exp.oxygen_lvl 20

# correct overshoots
execute if score @s exp.oxygen_lvl > @s exp.oxygen_max run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max
execute on vehicle if score @s exp.oxygen_lvl matches ..0 run scoreboard players set @s exp.oxygen_lvl 0

# reset the players temperature
scoreboard players set @s exp.temperature 0
# Prevents suit leakage
tag @s add exp.inside_pressurized_space
# Gives this oxygen source priority over the suits tanks
tag @s add exp.connected_to_oxygen