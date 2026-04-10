# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/stop_walking
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 3/4 honored
# Sources:
# - function expansion:vehicles/mech/anim_control/signal_stop (1 caller) [OK same-folder]
# - function expansion:vehicles/mech/anim_control/start_walking (1 caller) [OK same-folder]
# - function expansion:vehicles/mech/anim_control/start_walking_back (1 caller) [OK same-folder]
# - function expansion:vehicles/mech/exit/exit (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s remove exp.mech_stop_walking

execute if score @s exp.timer_1 matches 0 unless entity @s[tag=exp.mech_jumping] on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/tween {to_frame: 0, duration: 5}
# run the flying instead of idle animation if the mech is jumping
#execute if score @s exp.timer_1 matches 0 if entity @s[tag=exp.mech_jumping] on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/falling/tween {to_frame: 0, duration: 5}

execute if entity @s[tag=exp.mech_walking_backwards] run return run function expansion:vehicles/mech/anim_control/stop_walking_backward
execute if entity @s[tag=exp.mech_walking_forwards] run return run function expansion:vehicles/mech/anim_control/stop_walking_forward