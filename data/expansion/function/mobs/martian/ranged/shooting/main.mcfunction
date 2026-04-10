# >>> generated function callers >>>
# Callers for expansion:mobs/martian/ranged/shooting/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/martian/ranged/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.warmup matches 1.. run scoreboard players remove @s exp.warmup 1

execute if score @s exp.cooldown matches 1.. run return run scoreboard players remove @s exp.cooldown 1

execute unless score @s exp.ammo matches 1.. run return run function expansion:mobs/martian/ranged/shooting/reload

execute unless score @s exp.warmup matches 1.. if function expansion:mobs/martian/ranged/shooting/target_aligned run function expansion:items/railgun/warmup

execute if score @s exp.warmup matches 1 run function expansion:mobs/martian/ranged/shooting/shoot