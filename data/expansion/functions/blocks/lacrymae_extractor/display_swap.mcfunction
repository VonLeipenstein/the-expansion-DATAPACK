# take the obsidian if there is one
execute unless data entity @s item{id:"minecraft:air"} run function expansion:blocks/lacrymae_extractor/take_block

# put the crying obsidian into the block
execute if data entity @s[tag=!exp.took_extraction_block] item{id:"minecraft:air"} if entity @p[nbt={SelectedItem:{id:"minecraft:crying_obsidian"}}] run function expansion:blocks/lacrymae_extractor/insert_block

# remove extracting tag
tag @s remove exp.took_extraction_block