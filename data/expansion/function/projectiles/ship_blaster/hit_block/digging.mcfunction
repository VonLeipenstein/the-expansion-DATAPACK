# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/hit_block/digging
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/hit_block/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

# destroy blocks
execute unless block ~ ~ ~ #expansion:inexplodable run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

# teleport mines items to the nearby player
execute as @e[type=item,distance=..3,limit=1,sort=nearest] run function expansion:projectiles/ship_blaster/tp_item

# particles
particle minecraft:dust{color:[0d,1d,0.016d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force