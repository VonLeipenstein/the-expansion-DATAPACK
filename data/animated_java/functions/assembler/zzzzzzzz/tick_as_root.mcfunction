execute unless score @s aj.assembler.rig_loaded = @s aj.assembler.rig_loaded run function animated_java:assembler/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:assembler/zzzzzzzz/animations/tick
function #animated_java:assembler/on_tick/as_root