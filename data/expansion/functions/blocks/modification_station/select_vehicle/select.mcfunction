# tag the modstation and the vehicle selected
tag @e[type=minecraft:armor_stand,tag=exp.modstation,limit=1,sort=nearest] add exp.has_vehicle_selected
tag @s add exp.mod_vehicle

# set the unique id of the selected vehicle equal to the modstations id
scoreboard players operation @s exp.unique_id = @e[type=minecraft:armor_stand,tag=exp.modstation,limit=1,sort=nearest] exp.unique_id

# update the model displayed by the modstation
execute if entity @s[tag=exp.spaceship] on passengers if entity @s[tag=exp.vehicle_display] run item replace entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] container.0 from entity @s container.0


execute if entity @s[tag=exp.spaceship] run tag @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] add exp.modding_ship
execute if entity @s[tag=exp.mech] run tag @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] add exp.modding_mech