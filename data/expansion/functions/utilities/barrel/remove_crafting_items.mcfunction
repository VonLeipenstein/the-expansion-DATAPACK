execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:1b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 0.. run item modify block ~ ~ ~ container.1 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.1 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.2 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.2 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:3b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.3 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.3 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:10b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.10 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.10 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:11b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.11 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.11 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:12b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.12 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.12 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:19b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.19 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.19 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:20b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.20 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.20 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:21b}].Count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 1.. run item modify block ~ ~ ~ container.21 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.21 with minecraft:air
