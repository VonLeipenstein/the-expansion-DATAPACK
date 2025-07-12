# only lose oxygen if my oxygen score is greater than 0
execute unless score @s exp.oxygen_lvl matches 1.. run return fail

# consume a base of 10 oxygen
scoreboard players set #temp exp.oxygen_lvl 10

# Lose a percentage of your oxygen based on your suit integrity
function expansion:mechanics/oxygen/add_leakage_loss

# consome more oxygen when running, and less when sneaking
execute if predicate expansion:utility/sprint run scoreboard players add #temp exp.oxygen_lvl 5
execute if predicate expansion:utility/sneak run scoreboard players remove #temp exp.oxygen_lvl 5

# subtract the calculated oxygen loss from the current lvl
scoreboard players operation @s exp.oxygen_lvl -= #temp exp.oxygen_lvl
execute if score @s exp.oxygen_lvl matches ..-1 run scoreboard players set @s exp.oxygen_lvl 0

# reset scores
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #out exp.math
scoreboard players reset #max exp.math
scoreboard players reset #x exp.math