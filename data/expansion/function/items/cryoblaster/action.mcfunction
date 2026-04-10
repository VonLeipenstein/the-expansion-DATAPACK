# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/action
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

# remove the ammo
scoreboard players operation #temp exp.ammo -= #temp exp.hold_value_alt

# placing block
execute if score #temp exp.hold_value matches 0 anchored feet rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air run return run function expansion:items/cryoblaster/place_block
# shooting ice
execute if score #temp exp.hold_value matches 1 anchored eyes positioned ^ ^ ^2 run return run function expansion:items/cryoblaster/shoot
# place wall
execute if score #temp exp.hold_value matches 2 anchored feet rotated ~ 0 run return run function expansion:items/cryoblaster/place_wall