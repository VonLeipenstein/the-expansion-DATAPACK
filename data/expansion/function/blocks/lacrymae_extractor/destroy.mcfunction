# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/lacrymae_extractor/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":{color:"dark_gray",translate:"exp_blocks_extractor_name"}}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/lacrymae_extractor

execute on passengers if entity @s[tag=exp.extractor_display] if items entity @s container.0 crying_obsidian run loot spawn ~ ~ ~ loot minecraft:blocks/crying_obsidian
execute on passengers if entity @s[tag=exp.extractor_display] if items entity @s container.0 obsidian run loot spawn ~ ~ ~ loot minecraft:blocks/obsidian

execute on passengers run kill @s

kill @s
 