# new mech entity stack
function expansion:vehicles/mech/summon/new_entity_stack

# set the data for the stack
execute as @e[type=minecraft:armor_stand,tag=exp.mech,tag=exp.new_vehicle,limit=1,sort=nearest] run function expansion:vehicles/mech/summon/set_data