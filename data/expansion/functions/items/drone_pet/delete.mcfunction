execute at @s run playsound expansion:drone.dismiss neutral @a ~ ~ ~

execute on attacker run tag @s remove exp.has_active_drone
execute on vehicle run kill @s
kill @s

# give the player the drone, or spawn it if this function is called from player_death
execute on attacker run loot give @s[scores={exp.death=0}] loot expansion:tools/pet_drone
execute on attacker if score @s exp.death matches 1 run loot spawn ~ ~ ~ loot expansion:tools/pet_drone