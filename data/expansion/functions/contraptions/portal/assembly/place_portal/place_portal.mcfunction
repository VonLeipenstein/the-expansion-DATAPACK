execute if entity @s[y_rotation=-135.1..-45] align xyz positioned ~.5 ~1 ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.portal_main","exp.block","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Rotation:[90f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute if entity @s[y_rotation=45.1..135] align xyz positioned ~.5 ~1 ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.portal_main","exp.block","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Rotation:[-90f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute if entity @s[y_rotation=-45..45] align xyz positioned ~.5 ~1 ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.portal_main","exp.block","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute if entity @s[y_rotation=135.1..-135] align xyz positioned ~.5 ~1 ~.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.portal_main","exp.block","exp.portal_stand","smithed.block"],Marker:0b,DisabledSlots:2039583,Rotation:[360f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b}

execute as @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] at @s run function expansion:contraptions/portal/assembly/place_portal/place_finish 

execute run playsound minecraft:block.metal.place voice @s