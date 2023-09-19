execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,DisabledSlots:2039583,Rotation:[90f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,DisabledSlots:2039583,Rotation:[270f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,DisabledSlots:2039583,Rotation:[180f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,DisabledSlots:2039583,Rotation:[360f,0f],Tags:["exp.lacrymae_extractor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012302}}]}

summon minecraft:item_display ~ ~1.42 ~ {Tags:["exp.extractor_display","exp.block","smithed.block"],item_display:"head",width:1,height:1}
data merge entity @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.45f,0.45f,0.45f]}}
summon minecraft:interaction ~ ~1 ~ {Tags:["exp.extractor_rcdet","smithed.block"],width:1.0f,height:1.0f,response:1b}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Lacrymae Extractor","color":"dark_grey"}'} replace

