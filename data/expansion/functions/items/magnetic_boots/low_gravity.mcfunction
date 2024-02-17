# remove floor tag
tag @s[tag=exp.no_floor] remove exp.no_floor

# check if there are no air blocks underneath the player
execute positioned ~ ~-1 ~ if block ~ ~ ~ #expansion:air run function expansion:items/magnetic_boots/floor_check/check1

# apply slow falling if there is no nearby floor and remove it accordingly
effect clear @s[tag=!exp.no_floor] slow_falling
effect give @s[tag=exp.no_floor] minecraft:slow_falling 1 0 true