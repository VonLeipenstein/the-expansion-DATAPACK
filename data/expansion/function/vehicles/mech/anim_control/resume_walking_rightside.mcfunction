# resume walking animation
execute if entity @s[tag=exp.mech_walking,tag=!exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_right.frame = @s aj.walking_body.frame
execute if entity @s[tag=exp.mech_walking,tag=!exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_right/resume

# resume backwards walking animation
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_backwards_right.frame = @s aj.walking_backwards_body.frame
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_right/resume