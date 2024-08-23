# take the obsidian if there is one
execute if items entity @s container.0 * run function expansion:blocks/lacrymae_extractor/display/take_block

# put the crying obsidian into the block
execute unless items entity @s container.0 * if items entity @p weapon.mainhand crying_obsidian run function expansion:blocks/lacrymae_extractor/display/insert_block

# remove extracting tag
tag @s remove exp.took_extraction_block
