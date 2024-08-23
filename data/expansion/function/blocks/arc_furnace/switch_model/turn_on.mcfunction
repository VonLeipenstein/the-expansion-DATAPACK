tag @s add exp.smelting
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,components:{"minecraft:custom_data":{gui_item:1b}}}]} run data modify block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data set value 124452
data modify entity @s ArmorItems[3].components.minecraft:custom_model_data set value 1012307
