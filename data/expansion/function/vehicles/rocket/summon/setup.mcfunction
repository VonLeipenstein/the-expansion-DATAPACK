# add the custom model to the item display
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.rocket_display] run loot replace entity @s container.0 loot expansion:vehicles/rocket
# set the transformations for the item display
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.rocket_display] run data merge entity @s {transformation:{translation:[0.0f,-0.31f,0.0f],scale:[0.62f,0.62f,0.62f]}}

# set the fuel level from the handheld item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.components."minecraft:custom_data".fuel_lvl

# Overlayed on 1.21.6+
function expansion:vehicles/rocket/summon/set_camera_distance

# initialize the waypoint (1.21.6+)
function expansion:vehicles/rocket/summon/set_waypoint

# set the max fuel
scoreboard players set @s exp.fuel_max 640

tag @s remove exp.new_vehicle