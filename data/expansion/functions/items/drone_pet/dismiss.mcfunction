execute at @e[type=minecraft:armor_stand,tag=exp.pet_drone,limit=1,sort=nearest] run playsound expansion:drone.dismiss neutral @a ~ ~ ~

tag @s remove exp.has_active_drone
execute as @e[type=minecraft:armor_stand,tag=exp.pet_drone,limit=1,sort=nearest] on passengers run kill @s
kill @e[type=minecraft:armor_stand,tag=exp.pet_drone,limit=1,sort=nearest]

# give the player the drone, or spawn it if this function is called from player_death
loot give @s[scores={exp.death=0}] loot expansion:tools/pet_drone
execute if score @s exp.death matches 1 run loot spawn ~ ~ ~ loot expansion:tools/pet_drone