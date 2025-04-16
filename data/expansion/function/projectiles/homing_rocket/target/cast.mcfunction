execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^10.5 ~ ~

scoreboard players set #temp exp.max_range 300
scoreboard players set #temp exp.cooldown 5
scoreboard players reset #temp exp.bool

tag @s add exp.target_marker

execute at @s run function expansion:utilities/raycast/target/loop

scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.cooldown