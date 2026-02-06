# find the assigned beacon
scoreboard players operation #search exp.pad_id = @s exp.pad_id

tag @s add exp.landing
tag @s remove exp.launching

execute if entity @s[tag=exp.delivering] at @e[type=minecraft:item_display,tag=exp.cargo_beacon,predicate=expansion:compare_score/pad_id,limit=1] run tp @s ~ ~300 ~
execute if entity @s[tag=exp.returning] at @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] run tp @s ~ ~300 ~