playsound expansion:drone.dismiss neutral @a ~ ~ ~
 
tag @p[tag=exp.clicked_ship] remove exp.has_active_drone

execute as @s on passengers run kill @s
kill @s

# give the player the drone, or spawn it if this function is called from player_death
loot give @p[scores={exp.death=0},tag=exp.clicked_ship] loot expansion:tools/pet_drone
execute if score @p[tag=exp.clicked_ship] exp.death matches 1 run loot spawn ~ ~ ~ loot expansion:tools/pet_drone