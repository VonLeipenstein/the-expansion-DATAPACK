execute store result score #temp exp.unique_id run data get entity @s ArmorItems[3].components.minecraft:custom_data.room_id

# merge the score with the item description
execute unless score #temp exp.unique_id matches 0 store result storage expansion:transporter_room_id data.room_id int 1 run scoreboard players get #temp exp.unique_id
execute unless score #temp exp.unique_id matches 0 run item modify entity @p[tag=exp.transporting] weapon.mainhand expansion:transporter/assign_id