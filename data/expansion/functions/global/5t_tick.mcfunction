# re-schedule the function
schedule clear expansion:global/10t_tick
schedule function expansion:global/10t_tick 5t append

# craft fabricator
execute at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{steel_ingot:1b},Count:15b}},limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..1,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:5b}},distance=..1,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..1,limit=1,sort=arbitrary] run function expansion:blocks/fabricator/create

# kill gui items
kill @e[type=item,predicate=expansion:nbt_checks/items/gui,limit=10,sort=arbitrary]