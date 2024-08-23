execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:0b}].count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 0.. run item modify block ~ ~ ~ container.0 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.0 with minecraft:air

execute store result score @s exp.hold_count run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score @s exp.hold_count matches 0.. run item modify block ~ ~ ~ container.2 expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace block ~ ~ ~ container.2 with minecraft:air

execute unless entity @s[tag=exp.smelting] run function expansion:blocks/arc_furnace/switch_model/turn_on