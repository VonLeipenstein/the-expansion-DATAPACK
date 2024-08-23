tag @s add exp.mech_walking
tag @s add exp.mech_walking_backwards

# torso
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_body/resume
execute unless score @s exp.mech_left_anim matches 0.. unless score @s exp.mech_left_dur matches 1.. run function expansion:vehicles/mech/anim_control/resume_walking_leftside
execute unless score @s exp.mech_right_anim matches 0.. unless score @s exp.mech_right_dur matches 1.. run function expansion:vehicles/mech/anim_control/resume_walking_rightside

# legs
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run scoreboard players operation #temp exp.value = @s aj.walking_backwards_body.frame
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run scoreboard players operation @s aj.walking_backwards.frame = #temp exp.value
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking_backwards/resume
