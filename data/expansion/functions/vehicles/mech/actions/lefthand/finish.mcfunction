tag @s remove exp.mech.action.left
tag @s remove exp.mech.action.left.stop

scoreboard players set @s exp.mech_left_dur 0

execute if entity @s[tag=exp.mech_walking] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.mech_torso.animation.walking_left.local_anim_time = @s aj.mech_torso.animation.walking_body.local_anim_time
execute if entity @s[tag=exp.mech_walking] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/resume

execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.mech_torso.animation.walking_backwards_left.local_anim_time = @s aj.mech_torso.animation.walking_backwards_body.local_anim_time
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_left/resume