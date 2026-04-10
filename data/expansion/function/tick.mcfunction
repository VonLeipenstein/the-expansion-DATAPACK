# >>> generated function callers >>>
# Callers for expansion:tick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:tick_toggle (1 caller) [OK same-folder]
# <<< generated function callers <<<

# players
execute as @a at @s run function expansion:player/main

# solar system generation
execute if function expansion:solar_system/generation/generating_any in expansion:space run function expansion:solar_system/generation/main

# mobs
execute as @e[type=minecraft:marker,tag=exp.mob_marker] at @s run function expansion:mobs/main

# blocks
execute as @e[type=#expansion:block_base,tag=exp.block] at @s positioned ~ ~-1 ~ run function expansion:blocks/main

# slowcasters
execute as @e[type=#expansion:slowcasters,tag=exp.slowcast] at @s run function expansion:projectiles/main