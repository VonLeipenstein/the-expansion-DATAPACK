# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/propulsion
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute anchored eyes run particle minecraft:cloud ~ ~-2 ~ 0.4 0.4 0.4 0 10 force

# transport to earth when reaching y=500
execute if predicate expansion:location/space_edge run function expansion:solar_system/transitions/moon_earth/moon_to_earth
