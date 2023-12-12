execute store result score @s exp.hold_value run data get entity @s SelectedItem.tag.tank_lvl

execute if score @s exp.hold_value matches 1.. run function expansion:mechanics/oxygen/refill
