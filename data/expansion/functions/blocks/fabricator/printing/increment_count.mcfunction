execute store result score @s exp.hold_value run data get block ~ ~ ~ Items[{Slot:15b}].Count
scoreboard players operation @s exp.hold_count += @s exp.hold_value
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.15 expansion:utility/set_count_from_score

