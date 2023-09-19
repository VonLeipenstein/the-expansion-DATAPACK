scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute at @s as @e[type=minecraft:armor_stand,tag=exp.pet_drone,predicate=expansion:compare_score/unique_id,limit=1,sort=nearest] run function expansion:items/drone_pet/force_delete
