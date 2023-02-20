data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:7b}]
data modify entity @s ArmorItems[1].Count set value 1

execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if score @s exp.bool matches 0 run function expansion:blocks/arc_furnace/melting/start_melting
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} run function expansion:blocks/arc_furnace/melting/start_melting
