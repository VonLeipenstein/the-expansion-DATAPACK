item replace entity @s container.0 from entity @p weapon.mainhand expansion:portal/count_to_1

execute store result score @s exp.hold_count run data get entity @p SelectedItem.Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify entity @p weapon.mainhand expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace entity @p weapon.mainhand with minecraft:air


