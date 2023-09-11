scoreboard players operation #search exp.drone_id = @s exp.drone_id

execute at @s as @e[type=minecraft:armor_stand,tag=exp.pet_drone,predicate=expansion:compare_score/drone_id,limit=1,sort=nearest] on passengers if data entity @s[type=interaction] attack.player run function expansion:items/drone_pet/delete

advancement revoke @s only expansion:utility/drone_pet_lc