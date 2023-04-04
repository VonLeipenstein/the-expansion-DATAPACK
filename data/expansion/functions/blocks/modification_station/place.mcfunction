execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.modstation","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012312}}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.modstation","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012312}}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[360f,0f],Tags:["exp.modstation","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012312}}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.modstation","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012312}}]}

summon minecraft:item_display ~ ~1.5 ~ {Tags:["exp.modstation_display"],item_display:"head"}
data merge entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] {transformation:{scale:[0.08f,0.08f,0.08f]}}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'{"translate":"exp_blocks_modstation_name","color":"dark_grey"}'} replace
execute as @e[type=minecraft:armor_stand,tag=exp.modstation,limit=1,sort=nearest] run function expansion:blocks/modification_station/gui/gui