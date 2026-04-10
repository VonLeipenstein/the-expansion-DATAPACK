# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/hit_block/gatling
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/hit_block/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

# particles
particle minecraft:dust{color:[1d,0d,0d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force
particle explosion ~ ~ ~ 0 0 0 0 5 force

# damage nearby players
execute as @e[type=#expansion:sentient,distance=..2] run function expansion:projectiles/ship_blaster/damage/gatling