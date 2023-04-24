execute unless score @s aj.assembler.rig_loaded matches 1 run function zzz_assembler_internal:on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #assembler:on_tick
function zzz_assembler_internal:animations/tick