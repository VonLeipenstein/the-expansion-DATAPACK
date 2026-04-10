# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/find_idle_frame
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/anim_control/signal_stop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.mech_walking_forwards] on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation #temp exp.math = @s aj.walking_body.frame
execute if entity @s[tag=exp.mech_walking_backwards] on passengers if entity @s[tag=aj.mech_torso.root] run scoreboard players operation #temp exp.math = @s aj.walking_backwards_body.frame

scoreboard players operation #temp exp.math %= #20 exp.const
scoreboard players operation #temp exp.math -= #20 exp.const
scoreboard players operation @s exp.timer_1 = #temp exp.math
scoreboard players reset #temp exp.math