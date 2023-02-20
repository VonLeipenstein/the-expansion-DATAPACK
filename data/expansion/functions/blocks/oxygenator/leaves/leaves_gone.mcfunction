function expansion:blocks/oxygenator/fail
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b,tag:{gui_item:1b}}]} run scoreboard players set @s exp.cooldown 20
tag @s remove exp.leaves_depleted