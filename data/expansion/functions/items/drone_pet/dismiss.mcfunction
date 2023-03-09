tag @s remove exp.has_active_drone
execute as @e[type=armor_stand,tag=exp.pet_drone,limit=1,sort=nearest] on passengers run kill @s
kill @e[type=armor_stand,tag=exp.pet_drone,limit=1,sort=nearest]
loot give @s loot expansion:tools/pet_drone