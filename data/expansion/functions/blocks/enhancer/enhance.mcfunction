# modules
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{mobility_module:1b}}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{mobility_module:1b},Count:1b}]} run tag @s remove exp.valid_item
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{oxygen_module:1b}}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{oxygen_module:1b},Count:1b}]} run tag @s remove exp.valid_item
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{cooling_module:1b}}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{cooling_module:1b},Count:1b}]} run tag @s remove exp.valid_item
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{warming_module:1b}}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{warming_module:1b},Count:1b}]} run tag @s remove exp.valid_item
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{armored_module:1b}}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{armored_module:1b},Count:1b}]} run tag @s remove exp.valid_item

execute if entity @s[tag=exp.valid_item] if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{mobility_module:1b}}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/mobility
execute if entity @s[tag=exp.valid_item] if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{oxygen_module:1b}}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/oxygen
execute if entity @s[tag=exp.valid_item] if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{cooling_module:1b}}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/cooling
execute if entity @s[tag=exp.valid_item] if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{warming_module:1b}}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/warming
execute if entity @s[tag=exp.valid_item] if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{armored_module:1b}}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/armored

# colours
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:blue_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/blue
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:black_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/black
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:brown_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/brown
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:cyan_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/cyan
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:gray_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/gray
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:green_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/green
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:light_blue_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/lblue
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:light_gray_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/lgray
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:lime_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/lime
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:magenta_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/magenta
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:orange_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/orange
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:pink_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/pink
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:purple_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/purple
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:red_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/red
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:white_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/white
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:yellow_dye"}]} run item modify block ~ ~ ~ container.5 expansion:space_equipment/colours/yellow
