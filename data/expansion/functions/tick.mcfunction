# players
execute as @a at @s run function expansion:player/main

# mobs
execute as @e[type=#expansion:mob_template,tag=exp.mob] at @s run function expansion:mobs/main

# blocks
execute as @e[type=minecraft:armor_stand,tag=exp.block] at @s run function expansion:blocks/main

# slowcasting
execute as @e[type=minecraft:marker,tag=exp.slowcast] at @s run function expansion:utilities/raycast/slowcast/main

# remove water when mining ores
execute as @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{expansion_ore:1b}}},limit=1,sort=arbitrary] at @s run function expansion:blocks/ores/fix_water