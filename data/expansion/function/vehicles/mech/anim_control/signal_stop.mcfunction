# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/anim_control/signal_stop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# positions closest to idle frame are 0, 20 and 40
execute unless score @s exp.timer_1 matches ..0 run function expansion:vehicles/mech/anim_control/find_idle_frame

execute if score @s exp.timer_1 matches 0 run function expansion:vehicles/mech/anim_control/stop_walking

scoreboard players add @s exp.timer_1 1
