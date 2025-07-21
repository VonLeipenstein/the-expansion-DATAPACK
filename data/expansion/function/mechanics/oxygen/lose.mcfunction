# Players consume a base of 20 oxygen every second = 1 per tick
scoreboard players operation #temp exp.oxygen_lvl = #player.consumption exp.oxygen_lvl

# Consome more oxygen when running, and less when sneaking
execute if predicate expansion:utility/sprint run scoreboard players add #temp exp.oxygen_lvl 5
execute if predicate expansion:utility/sneak run scoreboard players remove #temp exp.oxygen_lvl 5

# Subtract the calculated oxygen loss from the current lvl
scoreboard players operation @s exp.oxygen_lvl -= #temp exp.oxygen_lvl

# Reset scores
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #out exp.math
scoreboard players reset #max exp.math
scoreboard players reset #x exp.math