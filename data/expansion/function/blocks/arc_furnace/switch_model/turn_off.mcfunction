tag @s remove exp.smelting
item replace entity @s armor.feet with minecraft:air
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,components:{"minecraft:custom_data":{gui_item:1b}}}]} run data modify block ~ ~ ~ Items[{Slot:1b}].components.minecraft:custom_model_data set value 124410
data modify entity @s ArmorItems[3].components.minecraft:custom_model_data set value 1012306
scoreboard players set @s exp.timer_1 0
