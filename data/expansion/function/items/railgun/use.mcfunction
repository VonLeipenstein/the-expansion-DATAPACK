# >>> generated function callers >>>
# Callers for expansion:items/railgun/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# stop when warmup or cooldown is active
execute if score @s exp.warmup matches 1.. run return fail
execute if score @s exp.cooldown matches 1.. run return fail

# check ammo
function expansion:items/railgun/get_ammo

# shoot
execute if score #temp exp.ammo matches 1.. run function expansion:items/railgun/warmup

# reload
execute store result score #temp exp.bool run clear @s minecraft:iron_ingot 0
execute unless score #temp exp.ammo matches 1.. if score #temp exp.bool matches 1.. run function expansion:items/railgun/reload
execute unless score #temp exp.ammo matches 1.. if score #temp exp.bool matches 0 run playsound expansion:railgun.dry_fire player @a ~ ~ ~

# reset scoreboard
scoreboard players reset #temp exp.ammo
scoreboard players reset #temp exp.bool