# >>> generated function callers >>>
# Callers for expansion:solar_system/transitions/to_space/store_exit_coord
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:solar_system/transitions/to_space/from_asteroids (1 caller) [OK same-folder]
# - function expansion:solar_system/transitions/to_space/from_planet (1 caller) [OK same-folder]
# <<< generated function callers <<<

# copy the data to the respective storage depending on the dimension, its a bit dirty but can't be bothered
execute if predicate expansion:dimension/overworld run return run data modify entity @s data.ReturnPos.earth set from entity @s Pos
execute if predicate expansion:dimension/moon run return run data modify entity @s data.ReturnPos.moon set from entity @s Pos
execute if predicate expansion:dimension/mars run return run data modify entity @s data.ReturnPos.mars set from entity @s Pos
execute if predicate expansion:dimension/venus run return run data modify entity @s data.ReturnPos.venus set from entity @s Pos
execute if predicate expansion:dimension/jupiter run return run data modify entity @s data.ReturnPos.jupiter set from entity @s Pos
execute if predicate expansion:dimension/europa run return run data modify entity @s data.ReturnPos.europa set from entity @s Pos
execute if predicate expansion:dimension/asteroids run return run data modify entity @s data.ReturnPos.asteroids set from entity @s Pos