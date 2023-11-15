# destroy the block if the dropper is gone
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/lacrymae_extractor/destroy

# extract lacrymae
execute if entity @s[tag=exp.obsidian_inside] unless data block ~ ~ ~ Items[{Slot:4b}].id run function expansion:blocks/lacrymae_extractor/extracting

# GUI
execute if entity @p[distance=..6] run function expansion:blocks/lacrymae_extractor/gui
