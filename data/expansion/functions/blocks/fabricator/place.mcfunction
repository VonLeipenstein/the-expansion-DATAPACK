function expansion:utilities/raycast/placement/initiate
execute if entity @s[y_rotation=-135.1..-45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000005,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=45.1..135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000003,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000002,display:{"color":8388608}}}]}
execute if entity @s[y_rotation=135.1..-135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[0f,0f],Tags:["exp.fabricator","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2000004,display:{"color":8388608}}}]}

# Place the display armor stands
summon armor_stand ~0.353 ~0.4 ~-0.048 {ShowArms:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],Pose:{LeftArm:[345f,45f,0f]},Tags:["exp.head_item","exp.block","smithed.block"]}
summon armor_stand ~ ~0.175 ~ {Small:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["exp.hand_item","exp.block","smithed.block"]}

execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"exp_blocks_fabricator_gui_name","color":"dark_grey"}'} replace
playsound minecraft:block.metal.place voice @s

