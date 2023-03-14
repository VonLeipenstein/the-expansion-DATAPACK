execute unless entity @s[tag=exp.home_too_far] unless entity @p[gamemode=!spectator,distance=..30] run function expansion:mobs/evil_drone/idle
execute unless entity @s[tag=exp.home_too_far] if entity @p[gamemode=!spectator,distance=..30] run function expansion:mobs/evil_drone/ranged_drone/main

execute if entity @e[type=minecraft:marker,tag=exp.drone_home,limit=1,sort=nearest,distance=50..55] run tag @s add exp.home_too_far
execute if entity @s[tag=exp.home_too_far] run function expansion:mobs/evil_drone/return_home

execute unless block ^ ^ ^.5 #expansion:expansion_air rotated ~ 0 run function expansion:mobs/evil_drone/hit_wall
particle dust 0 1 0.949 1.5 ^ ^.5 ^-0.7 0 0 0 0 1 force

execute on passengers if entity @s[nbt={HurtTime:9s}] run function expansion:mobs/evil_drone/hurt
execute unless predicate expansion:passengers/drone_slime run function expansion:mobs/evil_drone/no_passenger
