execute unless score @s aj.mech_torso.rig_loaded matches 1 run function zzz_mech_torso_internal:on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #mech_torso:on_tick
function zzz_mech_torso_internal:animations/tick