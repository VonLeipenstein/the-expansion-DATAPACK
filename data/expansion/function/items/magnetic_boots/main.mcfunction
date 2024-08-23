tag @s add exp.ignores_gravity_effects

# check if there are no air blocks underneath the player
execute positioned ~ ~-1 ~ if block ~ ~ ~ #expansion:air run function expansion:items/magnetic_boots/floor_check/check1

tag @s[tag=exp.no_floor] remove exp.ignores_gravity_effects

execute if entity @s[tag=exp.has_changed_gravity,tag=exp.ignores_gravity_effects] run function expansion:mechanics/gravity/remove_all