function expansion:vehicles/mech/summon/new_entity_stack

# mount AI pilot
summon armor_stand ~ ~ ~ {Invisible:1b,Health:100f,Tags:["exp.mech_pilot"]}
ride @e[type=armor_stand,tag=exp.mech_pilot,limit=1,sort=nearest] mount @e[type=cat,tag=exp.mech_seat,limit=1,sort=nearest]