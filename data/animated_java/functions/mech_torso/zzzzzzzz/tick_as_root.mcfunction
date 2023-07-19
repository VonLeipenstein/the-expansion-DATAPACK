execute unless score @s aj.mech_torso.rig_loaded = @s aj.mech_torso.rig_loaded run function animated_java:mech_torso/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:mech_torso/zzzzzzzz/animations/tick
function #animated_java:mech_torso/on_tick/as_root