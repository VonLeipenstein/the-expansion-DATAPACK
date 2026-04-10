# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/delete
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/dismiss (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute at @s run playsound expansion:drone.dismiss neutral @a ~ ~ ~

# give the player the drone, or spawn it if this function is called from player_death
execute on attacker unless score @s exp.death matches 1 run loot give @s loot expansion:tools/pet_drone
execute on attacker if score @s exp.death matches 1 run loot spawn ~ ~ ~ loot expansion:tools/pet_drone

execute on attacker run tag @s remove exp.has_active_drone

execute on vehicle on passengers run kill @s[type=!interaction]
execute on vehicle run kill @s
kill @s