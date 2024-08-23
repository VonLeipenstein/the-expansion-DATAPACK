summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["exp.fabricator","exp.block","smithed.block"],DisabledSlots:2039583,Passengers:[{id:"minecraft:item_display",Tags:["exp.fabricator_display"],item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":123460}}}],Rotation:[90f,0f]}

# Place the marker entity which detects if the armor stand is moved around by pistons
summon minecraft:marker ~ ~ ~ {Tags:["exp.block_fix"]}

execute as @e[type=armor_stand,tag=exp.fabricator,limit=1,sort=nearest] on passengers run data merge entity @s {transformation:{translation:[0.0f,-0.09f,0.0f],scale:[0.3f,0.3f,0.3f]},interpolation_duration:0,start_interpolation:0,item_display:"head"}

# summon the model
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1.975 ~ rotated 90 0 run function animated_java:fabricator/summon/default
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1.975 ~ rotated 270 0 run function animated_java:fabricator/summon/default
execute if entity @s[y_rotation=-45..45] positioned ~ ~1.975 ~ rotated 180 0 run function animated_java:fabricator/summon/default
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1.975 ~ rotated 0 0 run function animated_java:fabricator/summon/default

ride @e[type=item_display,tag=aj.fabricator.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.fabricator,limit=1,sort=nearest]

setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"exp_blocks_fabricator_gui_name","color":"dark_gray"}'} replace
function expansion:blocks/fabricator/gui/gui

