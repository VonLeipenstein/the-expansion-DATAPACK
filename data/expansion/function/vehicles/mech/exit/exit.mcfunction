# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/exit/exit
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/exit/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

# teleport the player in front of the mech
execute at @s positioned ^ ^ ^2 if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @p[tag=exp.tick_player] ~ ~ ~

# reset scores
scoreboard players reset @s exp.timer_2
scoreboard players reset @s exp.speed
scoreboard players set @s exp.mech_left_dur 0
scoreboard players set @s exp.mech_right_dur 0

data merge entity @s {NoAI:1b}

# reset animations
function expansion:vehicles/mech/anim_control/stop_walking

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/pause_all

effect clear @p[tag=exp.tick_player] speed

# remove tags from the player
tag @p[tag=exp.tick_player] remove exp.inside_mech
tag @p[tag=exp.tick_player] remove exp.inside_vehicle
tag @p[tag=exp.tick_player] remove exp.mech_pilot
tag @p[tag=exp.ignore_hitbox_hits] remove exp.ignore_hitbox_hits