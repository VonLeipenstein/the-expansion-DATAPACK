execute positioned 0 128 0 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_earth
execute positioned -621 128 126 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_moon
execute positioned -1882 128 -1334 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_mars
execute positioned 1358 128 1741 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_venus
#execute positioned 2448 128 -1605 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_mercury
execute positioned -2873 128 1536 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_jupiter
execute positioned -3557 128 1635 if entity @s[distance=..100] run function expansion:solar_system/transitions/from_space/space_to_europa

execute if predicate expansion:location/asteroids_edge run function expansion:solar_system/transitions/from_space/space_to_asteroids

# reset the gravity
tag @s remove exp.has_changed_gravity