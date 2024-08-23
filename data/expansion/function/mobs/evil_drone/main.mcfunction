execute unless entity @s[tag=exp.home_too_far] unless entity @p[gamemode=!spectator,distance=..30] run function expansion:mobs/evil_drone/idle
execute unless entity @s[tag=exp.home_too_far] if entity @p[gamemode=!spectator,distance=..30] run function expansion:mobs/evil_drone/ranged_drone/main

# return to home if the drone wanders to far, except if the drone is rogue
execute if entity @e[type=minecraft:armor_stand,tag=exp.drone_home,limit=1,sort=nearest,distance=50..60] run tag @s[tag=!exp.rogue_drone] add exp.home_too_far
execute if entity @s[tag=exp.home_too_far] run function expansion:mobs/evil_drone/return_home

# bump when hitting a wall
execute unless block ^ ^ ^1 #expansion:air rotated ~ 0 run function expansion:mobs/evil_drone/hit_wall

# engine particle
particle minecraft:dust{color:[0d,1d,0.949d],scale:1.5} ^ ^.8 ^-0.7 0 0 0 0 1 force

# hurt
execute on passengers if entity @s[nbt={HurtTime:9s}] run function expansion:mobs/evil_drone/hurt
execute unless predicate expansion:passengers/drone_hitbox run function expansion:mobs/evil_drone/no_passenger

# prevent drone from clipping into each other
execute facing entity @e[type=armor_stand,tag=exp.evil_drone,distance=0.5..1.2,limit=1] feet if block ^ ^ ^-0.05 #expansion:air run tp @s ^ ^ ^-0.05
