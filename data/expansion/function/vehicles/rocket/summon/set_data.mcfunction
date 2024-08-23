# add the custom model to the item display
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.rocket_display] run item replace entity @s container.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1012000] 1
# set the transformations for the item display
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.rocket_display] run data merge entity @s {transformation:{translation:[0.0f,-0.31f,0.0f],scale:[0.62f,0.62f,0.62f]}}

# set the fuel level from the handheld item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.components.minecraft:custom_data.fuel_lvl

# set the max fuel
scoreboard players set @s exp.fuel_max 640