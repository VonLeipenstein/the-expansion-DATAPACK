# tag the modstation and the vehicle selected
tag @n[type=minecraft:armor_stand,tag=exp.modstation] add exp.has_vehicle_selected
tag @s add exp.mod_vehicle

# set the unique id of the selected vehicle equal to the modstations id
scoreboard players operation @s exp.unique_id = @n[type=minecraft:armor_stand,tag=exp.modstation] exp.unique_id

# update the model displayed by the modstation
execute if entity @s[tag=exp.spaceship] on passengers if entity @s[tag=exp.vehicle_display] run item replace entity @n[type=minecraft:item_display,tag=exp.modstation_display] container.0 from entity @s container.0
execute if entity @s[tag=exp.moon_buggy] run item replace entity @n[type=minecraft:item_display,tag=exp.modstation_display] container.0 from entity @s armor.feet


execute if entity @s[tag=exp.spaceship] run tag @n[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation] add exp.modding_ship
execute if entity @s[tag=exp.mech] run tag @n[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation] add exp.modding_mech
execute if entity @s[tag=exp.moon_buggy] run tag @n[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation] add exp.modding_buggy

execute as @n[type=armor_stand,tag=exp.modstation,distance=..0.1] run function expansion:blocks/modification_station/gui/buttons/remove_button