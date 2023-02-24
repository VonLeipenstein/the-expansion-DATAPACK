execute if entity @s[nbt={item:{id:"minecraft:crying_obsidian"}}] run loot give @p loot minecraft:blocks/crying_obsidian
execute if entity @s[nbt={item:{id:"minecraft:obsidian"}}] run loot give @p loot minecraft:blocks/obsidian

item replace entity @s container.0 with minecraft:air

tag @s add exp.took_extraction_block