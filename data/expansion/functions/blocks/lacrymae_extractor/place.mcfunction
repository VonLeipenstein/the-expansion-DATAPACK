execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[360f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}

summon minecraft:armor_stand ~ ~0.525 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["exp.extractor_display","exp.block","smithed.block"]}
summon minecraft:interaction ~ ~1.2 ~ {Tags:["exp.extractor_rcdet","smithed.block"],width:0.5f,height:0.5f,response:1b}

execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Lacrymae Extractor","color":"dark_grey"}'} replace
playsound minecraft:block.metal.place block @s ~ ~ ~

