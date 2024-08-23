# ajmodel
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1 ~ rotated 90 0 run function animated_java:enhancer/summon/default
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1 ~ rotated 270 0 run function animated_java:enhancer/summon/default
execute if entity @s[y_rotation=-45..45] positioned ~ ~1 ~ rotated 180 0 run function animated_java:enhancer/summon/default
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1 ~ rotated 360 0 run function animated_java:enhancer/summon/default

# enhancer entity
summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,DisabledSlots:2039583,Invisible:1b,Rotation:[90f,0f],Tags:["exp.enhancer","exp.block","smithed.block"]}

# display
summon minecraft:item_display ~ ~1.5 ~ {Tags:["exp.enhancer_display"],item_display:"head",teleport_duration:1}
data merge entity @e[type=minecraft:item_display,tag=exp.enhancer_display,limit=1,sort=nearest] {transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,-0.2f,0f]}}
ride @e[type=minecraft:item_display,tag=exp.enhancer_display,limit=1,sort=nearest] mount @e[type=minecraft:armor_stand,tag=exp.enhancer,limit=1,sort=nearest]

# interaction
summon minecraft:interaction ~ ~1 ~ {Tags:["exp.enhancer_rcdet","smithed.block"],width:1.0f,height:1.0f,response:1b}

# block
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"exp_blocks_enhancer_name","color":"dark_gray"}'} replace
