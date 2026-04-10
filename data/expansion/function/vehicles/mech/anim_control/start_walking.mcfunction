# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/start_walking
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/drive (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

function expansion:vehicles/mech/anim_control/stop_walking

tag @s add exp.mech_walking
tag @s add exp.mech_walking_forwards
tag @s remove exp.mech_walking_backwards

# torso
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_body/resume

execute on passengers if entity @s[tag=exp.left_arm_control] unless score @s exp.mech_action_dur matches 1.. on vehicle run function expansion:vehicles/mech/anim_control/body/left/resume_walking
execute on passengers if entity @s[tag=exp.right_arm_control] unless score @s exp.mech_action_dur matches 1.. on vehicle run function expansion:vehicles/mech/anim_control/body/right/resume_walking

# legs
execute on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation #temp exp.value = @s aj.walking_body.frame
execute on passengers if entity @s[tag=aj.mech_legs.root] run scoreboard players operation @s aj.walking.frame = #temp exp.value
execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/walking/resume
