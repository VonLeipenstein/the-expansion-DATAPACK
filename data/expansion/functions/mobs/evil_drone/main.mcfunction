execute unless entity @p[distance=..25] run function expansion:mobs/evil_drone/idle
execute if entity @p[distance=..25] run function expansion:mobs/evil_drone/ranged_drone/main

execute unless block ^ ^ ^.5 #expansion:expansion_air rotated ~ 0 run function expansion:mobs/evil_drone/hit_wall

execute on passengers if entity @s[nbt={HurtTime:9s}] run function expansion:mobs/evil_drone/hurt
execute unless predicate expansion:passengers/drone_slime run function expansion:mobs/evil_drone/death
