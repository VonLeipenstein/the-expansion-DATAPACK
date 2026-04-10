# >>> generated function callers >>>
# Callers for expansion:projectiles/ship_blaster/hit_block/regular
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/ship_blaster/hit_block/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

# particles
particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:2} ~ ~ ~ 0.5 0.5 0.5 5 50 force

# summon fancy firework
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:1,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"burst",colors:[I;260095]}]}}}}

# damage nearby entities
execute as @e[type=#expansion:sentient,distance=..3] run function expansion:projectiles/ship_blaster/damage/regular