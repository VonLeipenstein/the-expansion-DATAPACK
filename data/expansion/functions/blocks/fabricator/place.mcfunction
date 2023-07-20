summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:0b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.fabricator","exp.block","smithed.block"]}
# Place the marker entity which detects if the armor stand is moved around by pistons
summon minecraft:marker ~ ~ ~ {Tags:["exp.block_fix"]}

# summon the model
execute if entity @s[y_rotation=-135.1..-45] positioned ~ ~1.48 ~ rotated 90 0 run function animated_java:fabricator/summon
execute if entity @s[y_rotation=45.1..135] positioned ~ ~1.48 ~ rotated 270 0 run function animated_java:fabricator/summon
execute if entity @s[y_rotation=-45..45] positioned ~ ~1.48 ~ rotated 180 0 run function animated_java:fabricator/summon
execute if entity @s[y_rotation=135.1..-135] positioned ~ ~1.48 ~ rotated 0 0 run function animated_java:fabricator/summon

ride @e[type=item_display,tag=aj.fabricator.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.fabricator,limit=1,sort=nearest]

setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"exp_blocks_fabricator_gui_name","color":"dark_grey"}'} replace
function expansion:blocks/fabricator/gui/gui

