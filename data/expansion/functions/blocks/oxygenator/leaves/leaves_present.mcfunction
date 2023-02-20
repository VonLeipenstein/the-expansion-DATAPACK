scoreboard players set @s exp.timer_1 200
execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:6b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.6 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.6 with minecraft:air
