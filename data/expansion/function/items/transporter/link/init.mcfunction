# check if the held pocket space is unassigned
execute store result score #temp exp.unique_id run data get entity @p[tag=exp.transporting] SelectedItem.components.minecraft:custom_data.room_id

# if it is unassigned, assign it to the clicked pocket space
execute if score #temp exp.unique_id matches -1 run function expansion:items/transporter/link/finish