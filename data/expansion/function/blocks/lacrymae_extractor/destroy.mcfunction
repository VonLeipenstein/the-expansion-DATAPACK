execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/lacrymae_extractor

execute as @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] if entity @s[nbt={item:{id:"minecraft:crying_obsidian"}}] run loot spawn ~ ~ ~ loot minecraft:blocks/crying_obsidian
execute as @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] if entity @s[nbt={item:{id:"minecraft:obsidian"}}] run loot spawn ~ ~ ~ loot minecraft:blocks/obsidian

execute at @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] run fill ~ ~-1 ~ ~ ~-1 ~ air replace

kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]
kill @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest]
kill @e[type=minecraft:interaction,tag=exp.extractor_rcdet,limit=1,sort=nearest]
kill @s
 