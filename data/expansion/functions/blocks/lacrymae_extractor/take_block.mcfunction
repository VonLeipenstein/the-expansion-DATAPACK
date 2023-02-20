execute if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian"}]}] run loot give @p loot minecraft:blocks/crying_obsidian
execute if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:obsidian"}]}] run loot give @p loot minecraft:blocks/obsidian

item replace entity @s armor.head with minecraft:air

tag @s add exp.took_extraction_block