# >>> generated function callers >>>
# Callers for expansion:blocks/portal/activation/activate_portal
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/activation/check_matches (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Put the portal animation on the head of the exp.portal armor stand. This item also stores all information in an array.
execute on passengers if entity @s[tag=exp.portal.warp_display] run data merge entity @s {transformation:{scale:[2.0f,2.0f,2.0f]},interpolation_duration:5,start_interpolation:-1}

# Overlayed in 1.21.9-1.21.10
function expansion:blocks/portal/activation/particles

scoreboard players reset @s exp.timer_2

# Add tag
tag @s add exp.activated_portal
tag @s remove exp.paused_portal
