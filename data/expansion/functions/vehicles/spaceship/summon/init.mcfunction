# summon a new entity stack for the spaceship
function expansion:vehicles/spaceship/summon/new_entity_stack

# set the data of the new spaceship
execute as @e[type=minecraft:armor_stand,tag=exp.spaceship,tag=exp.new_vehicle,limit=1,sort=nearest] run function expansion:vehicles/spaceship/summon/set_data