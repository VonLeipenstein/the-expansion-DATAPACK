execute store result score #player exp.hold_value run data get entity @p[tag=exp.clicking_player] SelectedItem.components."minecraft:custom_data".rocket_segment.class
execute store result score #rocket exp.hold_value on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.class

scoreboard players reset #return exp.value
execute if score #player exp.hold_value = #rocket exp.hold_value run scoreboard players set #return exp.value 1

scoreboard players reset #player exp.hold_value
scoreboard players reset #rocket exp.hold_value

execute if score #return exp.value matches 1 run return 1
return fail