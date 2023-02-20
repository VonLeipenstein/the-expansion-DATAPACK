tag @s add exp.smelting
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,tag:{gui_item:1b}}]} run data modify block ~ ~ ~ Items[{Slot:1b}].tag.CustomModelData set value 124452
data modify entity @s ArmorItems[3].tag.CustomModelData set value 1012307
