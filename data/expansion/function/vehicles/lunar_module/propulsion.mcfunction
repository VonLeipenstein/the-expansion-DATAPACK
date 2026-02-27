execute anchored eyes run particle minecraft:cloud ~ ~-2 ~ 0.4 0.4 0.4 0 10 force

# transport to earth when reaching y=500
execute if predicate expansion:location/space_edge run function expansion:solar_system/transitions/moon_earth/moon_to_earth
