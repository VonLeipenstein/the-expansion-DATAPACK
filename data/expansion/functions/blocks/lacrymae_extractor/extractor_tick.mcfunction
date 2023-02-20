execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/lacrymae_extractor/destroy
execute as @e[type=armor_stand,tag=exp.extractor_display,limit=1,sort=nearest] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian"}]}] unless data block ~ ~ ~ Items[{Slot:4b}].id run function expansion:blocks/lacrymae_extractor/extracting
execute if entity @p[distance=..6] run function expansion:blocks/lacrymae_extractor/gui
