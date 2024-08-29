execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1 ~ rotated 90 0 run function animated_java:compressor/summon/default
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1 ~ rotated 270 0 run function animated_java:compressor/summon/default
execute if entity @s[y_rotation=-45..45] positioned ~ ~1 ~ rotated 180 0 run function animated_java:compressor/summon/default
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1 ~ rotated 360 0 run function animated_java:compressor/summon/default

summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,DisabledSlots:2039583,Tags:["exp.compressor","exp.block","smithed.block"]}

#summon text_display ~ ~ ~ {Tags:["exp.compressor_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:'{"color":"aqua","translate":"exp_blocks_compressor_tip3"}'}
#execute rotated as @n[type=item_display,tag=aj.compressor.root] run tp @n[type=text_display,tag=exp.compressor_text] ~ ~1.01 ~ ~ ~

summon minecraft:item_display ~ ~1.42 ~ {Tags:["exp.compressor_display","exp.block","smithed.block"],item_display:"head",width:1,height:1}
execute as @n[type=item_display,tag=exp.compressor_display] at @s rotated as @n[type=item_display,tag=aj.compressor.root] run tp @s ~ ~ ~ ~ 90

summon minecraft:interaction ~ ~1 ~ {Tags:["exp.compressor_rcdet","smithed.block"],CustomNameVisible:0b,CustomName:'"Tank Here"',width:1.0f,height:1.0f,response:1b}

setblock ~ ~ ~ minecraft:cobblestone replace