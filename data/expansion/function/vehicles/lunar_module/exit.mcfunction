tag @p[tag=exp.inside_module,predicate=!expansion:nbt_checks/root_vehicle/lunar_module] add exp.exiting_module
scoreboard players reset @s exp.timer_2

scoreboard players remove @s exp.passenger_count 1

execute at @s positioned ^ ^ ^3 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tp @p[tag=exp.exiting_module] ~ ~ ~

tag @p[tag=exp.exiting_module] remove exp.inside_module
tag @p[tag=exp.exiting_module] remove exp.inside_vehicle
tag @p[tag=exp.exiting_module] remove exp.landing_moon
tag @p[tag=exp.exiting_module] remove exp.exiting_module
tag @p[tag=exp.exiting_module] remove exp.module_pilot