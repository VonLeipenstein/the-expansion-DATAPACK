execute if score @s exp.warmup matches 1.. run scoreboard players remove @s exp.warmup 1

execute if score @s exp.cooldown matches 1.. run return run scoreboard players remove @s exp.cooldown 1

execute unless score @s exp.ammo matches 1.. run return run function expansion:mobs/martian/ranged/shooting/reload

execute unless score @s exp.warmup matches 1.. if function expansion:mobs/martian/ranged/shooting/target_aligned run function expansion:items/railgun/warmup

execute if score @s exp.warmup matches 1 run function expansion:mobs/martian/ranged/shooting/shoot