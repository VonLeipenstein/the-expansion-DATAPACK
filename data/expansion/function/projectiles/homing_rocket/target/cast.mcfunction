# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/target/cast
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:items/rocket_launcher/use (1 caller) [WARN side/down 5]
# - function expansion:vehicles/mech/actions/rocket/init (1 caller) [WARN side/down 7]
# <<< generated function callers <<<

execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^10.5 ~ ~

scoreboard players set #temp exp.max_range 300
scoreboard players set #temp exp.cooldown 5
scoreboard players reset #temp exp.bool

tag @s add exp.target_marker

execute at @s run function expansion:utilities/raycast/target/loop

scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.cooldown