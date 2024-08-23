execute if items entity @s container.0 crying_obsidian run loot give @p loot minecraft:blocks/crying_obsidian
execute if items entity @s container.0 obsidian run loot give @p loot minecraft:blocks/obsidian

item replace entity @s container.0 with minecraft:air

tag @s add exp.took_extraction_block

tag @e[type=minecraft:armor_stand,tag=exp.lacrymae_extractor,limit=1,sort=nearest] remove exp.obsidian_inside