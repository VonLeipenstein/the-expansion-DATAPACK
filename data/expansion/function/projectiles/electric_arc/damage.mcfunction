# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/damage
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/hit/check (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

damage @s 6 expansion:zapped
execute if entity @s[tag=exp.hitbox] on vehicle run scoreboard players set @s exp.damage 6

# if another turret was hit
execute if entity @s[tag=exp.tesla_hitbox] run function expansion:projectiles/electric_arc/hit/turret

# particles
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 5 force

# give players mining fatigue to make the block harder to counter
effect give @s minecraft:mining_fatigue 1 5 true

# store the last ray with which we got hit to prevent being hit with the same ray again
scoreboard players operation @s exp.arc_id = #search exp.arc_id

# signal to bounce to other entities
scoreboard players set #temp exp.bool 1

return 3