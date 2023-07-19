# summon the model
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1 ~ rotated 90 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1 ~ rotated 270 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=-45..45] positioned ~ ~1 ~ rotated 180 0 run function animated_java:assembler/summon
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1 ~ rotated 0 0 run function animated_java:assembler/summon

summon item_display ~ ~1.6 ~ {item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402}},Tags:["exp.assembler_product"],item_display:"head",width:3,height:3}

data merge entity @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] {transformation:{translation:[0.0f,1.683f,0.0f],scale:[-0.62f,0.62f,-0.62f]}}
data merge entity @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.0f,0.0f],scale:[-0.25f,0.25f,-0.25f]}}

data modify entity @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] Rotation[0] set from entity @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] Rotation[0]

execute as @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"]}
execute as @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] at @s run setblock ^ ^-1 ^1 minecraft:barrel{CustomName:'{"translate":"exp_blocks_assembler_gui_name","color":"dark_grey"}'} replace
execute as @e[type=minecraft:item_display,tag=aj.assembler.root,limit=1,sort=nearest] at @s positioned ^ ^-1 ^1 run function expansion:contraptions/assembler/gui

ride @e[type=item_display,tag=aj.assembler.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.assembler,limit=1,sort=nearest]

execute as @e[type=item_display,tag=aj.assembler.root,limit=1,sort=nearest] run function animated_java:assembler/animations/ring_loop/stop

playsound minecraft:block.metal.place voice @s

