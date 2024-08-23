execute store result score #temp exp.hold_count run data get entity @s SelectedItem.count
scoreboard players operation #temp exp.hold_count -= #temp exp.value
execute if score #temp exp.hold_count matches 1.. run item replace entity @s weapon.mainhand from entity @s weapon.mainhand expansion:utility/set_count_from_temp_score
execute if score #temp exp.hold_count matches 0 run item replace entity @s weapon.mainhand with minecraft:air