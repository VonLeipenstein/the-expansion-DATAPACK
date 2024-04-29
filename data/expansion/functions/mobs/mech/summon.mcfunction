function expansion:vehicles/mech/summon/new_entity_stack

# swap the interaction entity and the cat to allow the wandering trader to use its own AI for pathfinding
execute as @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] run function expansion:vehicles/mech/toggle_ai/enable

# mount AI pilot
summon armor_stand ~ ~ ~ {Invisible:1b,Health:100f,Tags:["exp.mech_pilot"]}
ride @e[type=armor_stand,tag=exp.mech_pilot,limit=1,sort=nearest] mount @e[type=cat,tag=exp.mech_seat,limit=1,sort=nearest]

tag @e[type=wandering_trader,tag=exp.mech,limit=1,sort=nearest] add exp.evil_mech