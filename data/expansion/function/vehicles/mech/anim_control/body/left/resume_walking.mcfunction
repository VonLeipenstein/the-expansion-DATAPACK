# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/body/left/resume_walking
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:vehicles/mech/anim_control/body/left/find_anim_after_action (1 caller) [OK same-folder]
# - function expansion:vehicles/mech/anim_control/start_walking (1 caller) [OK above +2]
# - function expansion:vehicles/mech/anim_control/start_walking_back (1 caller) [OK above +2]
# <<< generated function callers <<<

# resume walking animation
execute if entity @s[tag=exp.mech_walking_forwards] on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_left.frame = @s aj.walking_body.frame
execute if entity @s[tag=exp.mech_walking_forwards] on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_left/resume

# resume backwards walking animation
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation @s aj.walking_backwards_left.frame = @s aj.walking_backwards_body.frame
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/walking_backwards_left/resume