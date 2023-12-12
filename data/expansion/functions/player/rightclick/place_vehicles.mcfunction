# initiate the raycast
function expansion:utilities/raycast/placement/initiate

# place a vehicle where the ray hits a block (if the ray hits a block) in a non-zero gravity environment
execute unless predicate expansion:dimension/zero_gravity anchored eyes positioned ^ ^ ^ at @e[type=minecraft:marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=exp.vehicle,distance=..1,limit=1,sort=nearest] run function expansion:vehicles/place

# place a vehicle 5 blocks in front of the player if the no block is hit ina zero gravity environment
execute if predicate expansion:dimension/zero_gravity anchored eyes positioned ^ ^ ^ at @e[type=minecraft:marker,tag=exp.ray,distance=..6,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=exp.vehicle,distance=..1,limit=1,sort=nearest] run function expansion:vehicles/place

# kill the ray
kill @e[type=minecraft:marker,tag=exp.ray,limit=1,sort=nearest]
