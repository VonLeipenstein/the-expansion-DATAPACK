scoreboard players operation #search exp.drone_id = @s exp.drone_id

execute at @s as @e[type=minecraft:armor_stand,tag=exp.pet_drone,predicate=expansion:compare_score/drone_id,limit=1,sort=nearest] run function expansion:items/drone_pet/force_delete
