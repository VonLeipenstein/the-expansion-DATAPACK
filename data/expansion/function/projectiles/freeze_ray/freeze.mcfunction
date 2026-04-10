# >>> generated function callers >>>
# Callers for expansion:projectiles/freeze_ray/freeze
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/freeze_ray/hit (1 caller) [OK same-folder]
# <<< generated function callers <<<

# creates ice blocks
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

fill ~-1 ~-1 ~-1 ~1 ~2 ~1 packed_ice replace #expansion:air
fill ~1 ~2 ~1 ~1 ~1 ~1 air replace packed_ice
fill ~-1 ~2 ~1 ~-1 ~2 ~1 air replace packed_ice
fill ~1 ~2 ~-1 ~1 ~2 ~-1 air replace packed_ice
fill ~-1 ~1 ~-1 ~-1 ~2 ~-1 air replace packed_ice
fill ~ ~3 ~ ~ ~3 ~ packed_ice replace #expansion:air

particle minecraft:poof ~ ~1.5 ~ 1 1 1 0 100

playsound block.lava.extinguish master @a ~ ~ ~ 1 2

return 1