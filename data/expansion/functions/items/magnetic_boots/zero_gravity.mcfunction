# remove floor tag
tag @s[tag=exp.no_floor] remove exp.no_floor

# check if there are no air blocks underneath the player
execute positioned ~ ~-1 ~ if block ~ ~ ~ #expansion:air run function expansion:items/magnetic_boots/floor_check/check1

# apply the normal zero gravity functions if there are air blocks beneath the player
execute if entity @s[tag=exp.no_floor] run function expansion:mechanics/gravity/zero_gravity/zero_gravity

# reset the rising and falling tags when the player touches ground again
execute unless entity @s[tag=exp.no_floor] run function expansion:items/magnetic_boots/floor_check/remove_tags