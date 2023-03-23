# ---run from expansion:functions/global/global_rightclick/rightclick_main--- 
function expansion:utilities/raycast/placement/initiate
execute unless predicate expansion:dimension/zero_gravity anchored eyes positioned ^ ^ ^ at @e[type=minecraft:marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=exp.vehicle,distance=..1,limit=1,sort=nearest] run function expansion:global/global_vehicles/place_vehicles
execute if predicate expansion:dimension/zero_gravity anchored eyes positioned ^ ^ ^ at @e[type=minecraft:marker,tag=exp.ray,distance=..6,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=exp.vehicle,distance=..1,limit=1,sort=nearest] run function expansion:global/global_vehicles/place_vehicles
kill @e[type=minecraft:marker,tag=exp.ray,limit=1,sort=nearest]
