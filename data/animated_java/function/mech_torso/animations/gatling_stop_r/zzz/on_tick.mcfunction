# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.gatling_stop_r.frame
function animated_java:mech_torso/animations/gatling_stop_r/zzz/apply_frame with storage aj:temp
execute if score @s aj.gatling_stop_r.frame matches 15.. run return run function animated_java:mech_torso/animations/gatling_stop_r/pause
scoreboard players add @s aj.gatling_stop_r.frame 1