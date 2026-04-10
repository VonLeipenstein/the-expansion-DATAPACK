# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/create
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{exp_item:{name:"steel_ingot"}}},count:15}},distance=..1.5,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:2}},distance=..1.5,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:5}},distance=..1.5,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1}},distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot expansion:blocks/fabricator
 