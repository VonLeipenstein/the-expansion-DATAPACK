execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_bottom run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["exp.rocket_part","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{rocket_bottom:1b,CustomModelData:1012299}}]}
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_cockpit run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["exp.rocket_part","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{rocket_cockpit:1b,CustomModelData:1012298}}]}
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_top run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["exp.rocket_part","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{rocket_top:1b,CustomModelData:1012297}}]}

summon minecraft:interaction ~ ~ ~ {Tags:["exp.rocketpart_rcdet"],width:2,height:2,response:1b}

fill ~ ~ ~ ~ ~1 ~ minecraft:barrier keep

execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_bottom:1b}}]}] add exp.rocket_bottom
execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_cockpit:1b}}]}] add exp.rocket_cockpit
execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,distance=..0.71,limit=1,sort=nearest] run tag @s[nbt={ArmorItems:[{},{},{},{tag:{rocket_top:1b}}]}] add exp.rocket_top

execute facing ~ ~-1 ~ positioned ~ ~0.2 ~ run function expansion:blocks/rocket_parts/place_particles

execute as @e[type=minecraft:armor_stand,tag=exp.rocket_part,tag=exp.rocket_top,distance=..0.71,limit=1,sort=nearest] at @s positioned ~ ~-2 ~ if entity @e[type=minecraft:armor_stand,tag=exp.rocket_part,tag=exp.rocket_cockpit,distance=..0.5,limit=1,sort=nearest] positioned ~ ~-2 ~ if entity @e[type=minecraft:armor_stand,tag=exp.rocket_bottom,tag=exp.rocket_bottom,distance=..0.5,limit=1,sort=nearest] run function expansion:blocks/rocket_parts/create_rocket