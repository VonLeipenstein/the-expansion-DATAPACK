# re-schedule the function
schedule clear expansion:5t_tick
schedule function expansion:5t_tick 5t append

# craft fabricator
execute at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{steel_ingot:1b}},count:15}},limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",count:2}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:5}},distance=..1.5,limit=1,sort=arbitrary] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1}},distance=..1.5,limit=1,sort=arbitrary] run function expansion:blocks/fabricator/create

# kill gui items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}},limit=10,sort=arbitrary]