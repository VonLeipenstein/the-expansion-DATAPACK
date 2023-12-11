execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.oxygenator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012309}}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.oxygenator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012309}}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.oxygenator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012309}}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[360f,0f],Tags:["exp.oxygenator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012309}}]}

summon minecraft:armor_stand ^ ^ ^ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["exp.sphere_display","smithed.block"]}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"exp_blocks_oxygenator_name","color":"dark_gray"}'} replace
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.oxygenator,limit=1,sort=nearest] exp.bool 0
execute as @e[type=minecraft:armor_stand,tag=exp.oxygenator,limit=1,sort=nearest] run function expansion:blocks/oxygenator/gui
