execute if data entity @s ArmorItems[3].id run function expansion:blocks/lacrymae_extractor/take_block
execute unless data entity @s[tag=!exp.took_extraction_block] ArmorItems[3].id if entity @p[nbt={SelectedItem:{id:"minecraft:crying_obsidian"}}] run function expansion:blocks/lacrymae_extractor/insert_block
tag @s remove exp.took_extraction_block