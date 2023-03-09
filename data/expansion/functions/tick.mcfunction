# post load functions
execute if score #reload exp.delay matches 1.. run function expansion:global/post_load

# generate planets
execute unless score #total_system exp.gen_success matches 1 as @a[tag=exp.generator] in expansion:space run function expansion:system_generation/generation_tick

# run functions looping as and at players
execute as @a at @s run function expansion:global/global_player

# mobs
execute as @e[type=#expansion:mob_template,tag=exp.mob] at @s run function expansion:mobs/mobs_tick
#execute as @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{death_item:1b}}},limit=1] at @s run function expansion:mobs/mob_death

# blocks
execute as @e[type=armor_stand,tag=exp.block] at @s run function expansion:global/global_blocks/blocks_tick

# slowcasting
execute as @e[type=marker,tag=exp.slowcast] at @s run function expansion:utilities/raycast/slowcast/main

# craft fabricator
execute at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{steel_ingot:1b},Count:15b}},limit=1] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},distance=..0.5,limit=1,sort=nearest] if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:5b}},distance=..0.5,limit=1,sort=nearest] if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..0.5,limit=1,sort=nearest] run function expansion:blocks/fabricator/create

# kill gui items
execute at @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{expansion_ore:1b}}},limit=1,sort=random] run function expansion:blocks/ores/fix_water
kill @e[type=item,predicate=expansion:nbt_checks/items/gui,limit=1]