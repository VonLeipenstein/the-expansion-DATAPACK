execute at @s positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @p[tag=exp.exit_mech] ~ ~ ~

scoreboard players reset @s exp.timer_2
scoreboard players reset @s exp.speed
scoreboard players reset @s exp.sneak_delay

tag @p[tag=exp.exit_mech] remove exp.inside_mech
tag @p[tag=exp.exit_mech] remove exp.inside_vehicle