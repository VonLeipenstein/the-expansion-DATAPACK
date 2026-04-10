# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/hit/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/inner_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players reset #temp exp.bool
scoreboard players remove @s exp.cooldown 1

# if the arc hits a block
execute unless block ~ ~ ~ #expansion:air run return run function expansion:projectiles/electric_arc/hit/block

# if the arc hits an entity
scoreboard players operation #search exp.arc_id = @s exp.arc_id
execute if score @s exp.damage matches 1 unless score @s exp.cooldown matches 1.. positioned ~-.10 ~-.10 ~-.10 as @e[type=#expansion:turret_target,dx=0,limit=1] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0] positioned ~.8 ~.8 ~.8 run return run function expansion:projectiles/electric_arc/damage

return fail