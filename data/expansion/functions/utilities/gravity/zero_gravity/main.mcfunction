# run movement functions if the player is wearing the space equipment
execute if entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment,tag=!exp.inside_vehicle] run function expansion:utilities/gravity/zero_gravity/movement

# apply exp.rising tag when jumping
tag @s[scores={exp.jump=1..},predicate=!expansion:nbt_checks/armor/magnetic_boots] add exp.rising

# apply levitation 255 when correct conditions are met
execute unless predicate expansion:utility/sneak if entity @s[tag=!exp.rising,tag=!exp.falling] if block ~ ~-1 ~ #expansion:expansion_air run function expansion:utilities/gravity/zero_gravity/apply_levitation

# run no-friction simulations when rising or falling
execute if entity @s[tag=exp.rising] run function expansion:utilities/gravity/zero_gravity/rising
execute if entity @s[tag=exp.falling] run function expansion:utilities/gravity/zero_gravity/falling

# make all other entities float
execute as @e[type=!minecraft:player,tag=!exp.spaceship,tag=!exp.zero_gravity,distance=..50,limit=1,sort=nearest] run function expansion:utilities/gravity/zero_gravity/make_float

# detect if the player is close to planets if they're in space
execute if predicate expansion:dimension/space unless entity @s[gamemode=spectator] run function expansion:global/transitions/planet_detection