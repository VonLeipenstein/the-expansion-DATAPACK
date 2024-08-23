# merge the mod array with the buggy
data modify entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage merge from entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] ArmorItems[3].components.minecraft:custom_data.ModStorage

execute if data entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.oxygen_tank.id run function expansion:vehicles/buggy/oxygen/merge_scores_from_tank
execute if data entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.speed_mod.id store result score @s exp.speed_mod run data get entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.speed_mod.components.minecraft:custom_data.value

# remove tag
tag @s remove exp.being_modified