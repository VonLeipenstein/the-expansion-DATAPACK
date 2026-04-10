# >>> generated function callers >>>
# Callers for expansion:utilities/raycast/placement/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:utilities/raycast/placement/cast (1 caller) [OK same-folder]
# - function expansion:utilities/raycast/placement/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove #temp exp.max_range 1

# as long as the block is air, cast the ray
execute if score #temp exp.max_range matches 1.. positioned ^ ^ ^0.05 if block ~ ~ ~ #expansion:air run return run function expansion:utilities/raycast/placement/loop

# if a block is hit, place either a block or a vehicle
execute if score #temp exp.max_range matches 1.. align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #expansion:blocks_placeable run function expansion:player/rightclick/placement