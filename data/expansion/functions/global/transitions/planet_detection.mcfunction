execute positioned 0 512 0 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_earth
execute positioned -621 512 126 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_moon
execute positioned -1882 512 -1334 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_mars
execute positioned 1358 512 1741 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_venus
#execute positioned 2448 512 -1605 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_mercury
execute positioned -2873 512 1536 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_jupiter
execute positioned -3557 512 1635 if entity @s[distance=..100] run function expansion:global/transitions/from_space/space_to_europa

execute if predicate expansion:location/space_edge run function expansion:global/transitions/from_space/space_to_asteroids