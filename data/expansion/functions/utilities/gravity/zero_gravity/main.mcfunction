# apply zero gravity functions if the player is not inside a vehicle
execute unless entity @s[tag=exp.inside_vehicle] unless predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:utilities/gravity/zero_gravity/zero_gravity
execute unless entity @s[tag=exp.inside_vehicle] if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/zero_gravity

# make all other entities float
execute as @e[type=!minecraft:player,tag=!exp.spaceship,tag=!exp.zero_gravity,distance=..50,limit=1,sort=nearest] run function expansion:utilities/gravity/zero_gravity/make_float

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:global/transitions/planet_detection