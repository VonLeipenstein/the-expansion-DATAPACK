kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~-2.5 ~ loot expansion:blocks/planetarium

execute as @e[type=item_display,tag=exp.planetarium_display,predicate=expansion:compare_score/unique_id] on passengers run kill @s

kill @e[tag=exp.planetarium_display,predicate=expansion:compare_score/unique_id]

execute on passengers run kill @s

kill @s
 