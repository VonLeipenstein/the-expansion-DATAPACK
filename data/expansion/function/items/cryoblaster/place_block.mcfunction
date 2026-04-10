# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/place_block
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/action (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run particle minecraft:poof ~ ~0.5 ~ .5 .5 .5 0 100

execute anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run setblock ~ ~ ~ minecraft:packed_ice

playsound block.lava.extinguish master @a ~ ~ ~ 1 2