execute unless score @s aj.fabricator.rig_loaded matches 1 run function zzz_fabricator_internal:on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #fabricator:on_tick
function zzz_fabricator_internal:animations/tick