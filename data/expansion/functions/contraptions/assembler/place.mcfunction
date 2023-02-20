function expansion:utilities/raycast/placement/initiate
execute if entity @s[y_rotation=-135.1..-45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000012,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=45.1..135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[270f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000014,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[180f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000011,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=135.1..-135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[0f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000013,display:{"color":8388608}}}]}

execute if entity @s[y_rotation=-135.1..-45] run summon item_frame ~ ~1 ~ {Facing:1b,Invulnerable:1b,ItemRotation:6b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_display","smithed.block"]}
execute if entity @s[y_rotation=45.1..135] run summon item_frame ~ ~1 ~ {Facing:1b,Invulnerable:1b,ItemRotation:2b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_display","smithed.block"]}
execute if entity @s[y_rotation=-45..45] run summon item_frame ~ ~1 ~ {Facing:1b,Invulnerable:1b,ItemRotation:0b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_display","smithed.block"]}
execute if entity @s[y_rotation=135.1..-135] run summon item_frame ~ ~1 ~ {Facing:1b,Invulnerable:1b,ItemRotation:4b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_display","smithed.block"]}

execute as @e[type=armor_stand,tag=exp.assembler,limit=1,sort=nearest] at @s run setblock ^ ^ ^1 minecraft:barrel{CustomName:'{"translate":"exp_blocks_assembler_gui_name","color":"dark_grey"}'} replace
execute as @e[type=armor_stand,tag=exp.assembler,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run function expansion:contraptions/assembler/gui
playsound minecraft:block.metal.place voice @s

