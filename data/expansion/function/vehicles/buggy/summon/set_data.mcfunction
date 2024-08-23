# copy the buggy item to a storage
data modify entity @s ArmorItems[0] set from entity @p[tag=exp.tick_player] SelectedItem

# make the buggy weightless if it is in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

execute rotated as @s on passengers if entity @s[tag=exp.buggy_turn] positioned as @s run tp @s ~ ~ ~ ~ ~

# extract the oxygen data from the item
function expansion:vehicles/buggy/oxygen/merge_scores_from_tank
# extract speed data from the item
scoreboard players set @s exp.speed_mod 10
execute if data entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.speed_mod.components.minecraft:custom_data.value store result score @s exp.speed_mod run data get entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.speed_mod.components.minecraft:custom_data.value
