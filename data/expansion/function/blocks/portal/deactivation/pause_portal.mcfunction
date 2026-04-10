# >>> generated function callers >>>
# Callers for expansion:blocks/portal/deactivation/pause_portal
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/portal/activation/check_matches (1 caller) [WARN side/down 2]
# - function expansion:blocks/portal/deactivation/deactivate_portal (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.activated_portal
tag @s add exp.paused_portal

scoreboard players reset @s exp.timer_2

execute on passengers if entity @s[tag=exp.portal.warp_display] run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:5,start_interpolation:-1}