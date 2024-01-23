# detect button presses
execute if entity @s[tag=exp.has_vehicle_selected] unless block ~ ~ ~ barrel{Items:[{Slot:16b,id:"minecraft:jigsaw",tag:{upgrade_button:1b,gui_item:1b}}]} run function expansion:blocks/modification_station/buttons/upgrade_button
execute if entity @s[tag=exp.has_vehicle_selected] unless block ~ ~ ~ barrel{Items:[{Slot:23b,id:"minecraft:jigsaw",tag:{remove_button:1b,gui_item:1b}}]} run function expansion:blocks/modification_station/buttons/remove_button

# select a nearby selectable vehicle
execute unless entity @s[tag=exp.has_vehicle_selected] as @e[type=minecraft:armor_stand,tag=exp.moddable_vehicle,distance=..50,limit=1,sort=nearest] if entity @s[tag=!exp.mod_vehicle,tag=!exp.player_inside] run function expansion:blocks/modification_station/select_vehicle/select

# gui
execute if entity @s[tag=exp.modding_ship] run function expansion:blocks/modification_station/spaceship/gui/main
execute if entity @s[tag=exp.modding_mech] run function expansion:blocks/modification_station/mech/gui/main