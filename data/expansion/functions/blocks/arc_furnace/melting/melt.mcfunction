data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:7b}]
data modify entity @s ArmorItems[1].Count set value 1

execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

execute if score @s exp.bool matches 0 if block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} run function expansion:blocks/arc_furnace/melting/add_product
execute if score @s exp.bool matches 0 unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} run function expansion:blocks/arc_furnace/melting/insert_product
execute if score @s exp.bool matches 0 run item replace entity @s armor.feet with minecraft:air

execute if score @s exp.bool matches 1 run function expansion:blocks/arc_furnace/switch_model/turn_off