execute if entity @s[y_rotation=-135.1..-45] run summon item_display ~ ~ ~ {Rotation:[90f,0f],Tags:["exp.assembler_display"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000012,display:{"color":8388608}}},item_display:"head",width:3,height:3}
execute if entity @s[y_rotation=45.1..135] run summon item_display ~ ~ ~ {Rotation:[270f,0f],Tags:["exp.assembler_display"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000014,display:{"color":8388608}}},item_display:"head",width:3,height:3}
execute if entity @s[y_rotation=-45..45] run summon item_display ~ ~ ~ {Rotation:[180f,0f],Tags:["exp.assembler_display"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000011,display:{"color":8388608}}},item_display:"head",width:3,height:3}
execute if entity @s[y_rotation=135.1..-135] run summon item_display ~ ~ ~ {Rotation:[0f,0f],Tags:["exp.assembler_display"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000013,display:{"color":8388608}}},item_display:"head",width:3,height:3}

summon item_display ~ ~1.6 ~ {item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_product"],item_display:"head",width:3,height:3}

data merge entity @e[type=minecraft:item_display,tag=exp.assembler_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,1.683f,0.0f],scale:[-0.62f,0.62f,-0.62f]}}
data merge entity @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.0f,0.0f],scale:[-0.25f,0.25f,-0.25f]}}

data modify entity @e[type=item_display,tag=exp.assembler_product,limit=1,sort=nearest] Rotation[0] set from entity @e[type=item_display,tag=exp.assembler_display,limit=1,sort=nearest] Rotation[0]

execute as @e[type=item_display,tag=exp.assembler_display,limit=1,sort=nearest] at @s run summon armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"]}
execute as @e[type=item_display,tag=exp.assembler_display,limit=1,sort=nearest] at @s run setblock ^ ^ ^1 minecraft:barrel{CustomName:'{"translate":"exp_blocks_assembler_gui_name","color":"dark_grey"}'} replace
execute as @e[type=item_display,tag=exp.assembler_display,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run function expansion:contraptions/assembler/gui

playsound minecraft:block.metal.place voice @s

