data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:7b}]
data modify entity @s ArmorItems[1].count set value 1

execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

execute if items block ~ ~ ~ container.7 * if score @s exp.bool matches 0 run function expansion:blocks/arc_furnace/melting/start_melting
execute unless items block ~ ~ ~ container.7 * run function expansion:blocks/arc_furnace/melting/start_melting
