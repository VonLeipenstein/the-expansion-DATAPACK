tag @p[distance=..0.4,tag=!exp.tp_rev_prev] add exp.returning

# check if the unique id of the first return entry is the same as the players unique id, search the correct one if not
execute store result score #temp exp.unique_id run data get entity @s ArmorItems[3].components.minecraft:custom_data.returns[0].id
execute unless score #temp exp.unique_id = @p[tag=exp.returning] exp.unique_id run function expansion:items/transporter/return/find_match

# return the player if a match has been found
execute if score #temp exp.unique_id = @p[tag=exp.returning] exp.unique_id run function expansion:items/transporter/return/init

tag @p[tag=exp.returning] add exp.returning