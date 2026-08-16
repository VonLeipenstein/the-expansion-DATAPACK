# >>> generated function callers >>>
# Callers for expansion:projectiles/drone_laser/loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=100}]

tp @s ^ ^ ^1

particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 force
particle minecraft:end_rod ^ ^ ^-.25 0 0 0 0 1 force
particle minecraft:end_rod ^ ^ ^-.5 0 0 0 0 1 force
particle minecraft:end_rod ^ ^ ^-.75 0 0 0 0 1 force

scoreboard players operation #temp exp.max_range = @s exp.max_range
scoreboard players operation #temp exp.max_range %= #5 exp.const
execute if score #temp exp.max_range matches 0 facing ~ ~1 ~ run function expansion:projectiles/beam/ring
scoreboard players reset #temp exp.max_range