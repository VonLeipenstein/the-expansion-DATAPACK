# detect button presses
execute if entity @s[tag=exp.has_vehicle_selected] unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless score @s exp.counter_1 matches ..4 run function expansion:blocks/modification_station/gui/buttons/upgrade_button
execute if entity @s[tag=exp.has_vehicle_selected] unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function expansion:blocks/modification_station/gui/buttons/remove_button

# select a nearby selectable vehicle
execute unless entity @s[tag=exp.has_vehicle_selected] as @n[type=minecraft:armor_stand,tag=exp.moddable_vehicle,distance=..50] if entity @s[tag=!exp.mod_vehicle,tag=!exp.player_inside] run function expansion:blocks/modification_station/select_vehicle/select
execute unless entity @s[tag=exp.has_vehicle_selected] run return run function expansion:blocks/modification_station/gui/none

# gui in case of vehicle
execute if entity @s[tag=exp.modding_ship] run function expansion:blocks/modification_station/gui/spaceship
execute if entity @s[tag=exp.modding_mech] run function expansion:blocks/modification_station/gui/mech
execute if entity @s[tag=exp.modding_buggy] run function expansion:blocks/modification_station/gui/buggy
