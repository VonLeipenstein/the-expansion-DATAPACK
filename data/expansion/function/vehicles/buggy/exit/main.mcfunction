execute at @s run stopsound @a player expansion:buggy.engine_driving

execute at @s positioned ^1 ^ ^ if block ~ ~ ~ #expansion:air if block ~ ~1 ~ #expansion:air run tp @p[tag=exp.exits_buggy] ~ ~ ~

function expansion:vehicles/buggy/anim_control/stop_driving

data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

scoreboard players reset @s exp.timer_2
scoreboard players reset @s exp.speed
tag @s remove exp.has_passenger