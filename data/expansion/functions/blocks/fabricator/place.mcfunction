summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.fabricator","exp.block","smithed.block"]}

# summon the model
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1.48 ~ rotated 90 0 run function fabricator:summon
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1.48 ~ rotated 270 0 run function fabricator:summon
execute if entity @s[y_rotation=-45..45] positioned ~ ~1.48 ~ rotated 180 0 run function fabricator:summon
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1.48 ~ rotated 0 0 run function fabricator:summon

ride @e[type=item_display,tag=aj.fabricator.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.fabricator,limit=1,sort=nearest]

# Place the display entity
summon minecraft:item_display ~ ~1 ~ {Tags:["exp.fabricator_display","exp.block","smithed.block"],item_display:"head",width:1,height:1}
data merge entity @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,0.735f,0.0f],scale:[-0.25f,0.25f,-0.25f]}}

setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"exp_blocks_fabricator_gui_name","color":"dark_grey"}'} replace
function expansion:blocks/fabricator/gui/gui

