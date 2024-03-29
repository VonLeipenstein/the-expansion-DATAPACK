# apply zero gravity functions if the player is not inside a vehicle
execute unless entity @s[tag=exp.inside_vehicle] unless predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:mechanics/gravity/zero_gravity/zero_gravity
execute unless entity @s[tag=exp.inside_vehicle] if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/zero_gravity

# make all other entities float
execute as @e[type=!minecraft:player,tag=!exp.spaceship,tag=!exp.moon_buggy,tag=!exp.zero_gravity,distance=..50,limit=1,sort=nearest] run function expansion:mechanics/gravity/zero_gravity/make_float