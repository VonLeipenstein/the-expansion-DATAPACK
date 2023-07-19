execute unless score @s aj.fabricator.rig_loaded = @s aj.fabricator.rig_loaded run function animated_java:fabricator/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:fabricator/zzzzzzzz/animations/tick
function #animated_java:fabricator/on_tick/as_root