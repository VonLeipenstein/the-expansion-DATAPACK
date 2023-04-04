execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000005,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000003,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000002,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[0f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000004,display:{"color":8388608}}}]}

# Place the display entity
summon minecraft:item_display ~ ~1 ~ {Tags:["exp.fabricator_display","exp.block","smithed.block"],item_display:"head",width:1,height:1}
data merge entity @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.735f,0.0f],scale:[-0.25f,0.25f,-0.25f]}}

setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"exp_blocks_fabricator_gui_name","color":"dark_grey"}'} replace
function expansion:blocks/fabricator/gui/gui

