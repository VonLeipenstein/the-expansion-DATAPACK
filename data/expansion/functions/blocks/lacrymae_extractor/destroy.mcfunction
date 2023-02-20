execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/lacrymae_extractor

execute as @e[type=minecraft:armor_stand,tag=exp.extractor_display,limit=1,sort=nearest] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian"}]}] run loot spawn ~ ~ ~ loot minecraft:blocks/crying_obsidian
execute as @e[type=minecraft:armor_stand,tag=exp.extractor_display,limit=1,sort=nearest] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:obsidian"}]}] run loot spawn ~ ~ ~ loot minecraft:blocks/obsidian

kill @e[type=minecraft:armor_stand,tag=exp.extractor_display,limit=1,sort=nearest]
kill @e[type=minecraft:interaction,tag=exp.extractor_rcdet,limit=1,sort=nearest]
kill @s