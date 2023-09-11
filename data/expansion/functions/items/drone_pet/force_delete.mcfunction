playsound expansion:drone.dismiss neutral @a ~ ~ ~
 
tag @p remove exp.has_active_drone

execute as @s on passengers run kill @s
kill @s

# give the player the drone, or spawn it if this function is called from player_death
loot give @p[scores={exp.death=0}] loot expansion:tools/pet_drone
execute if score @p exp.death matches 1 run loot spawn ~ ~ ~ loot expansion:tools/pet_drone