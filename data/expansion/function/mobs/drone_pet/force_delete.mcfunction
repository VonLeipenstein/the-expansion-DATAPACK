# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/force_delete
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/force_dismiss (1 caller) [OK same-folder]
# <<< generated function callers <<<

playsound expansion:drone.dismiss neutral @a ~ ~ ~

execute on passengers run kill @s
kill @s

# give the player the drone, or spawn it if this function is called from player_death
execute as @p[tag=exp.has_active_drone,predicate=expansion:compare_score/unique_id] at @s run loot spawn ~ ~ ~ loot expansion:tools/pet_drone
execute as @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{exp_item:{name:"pet_drone"}}}}},distance=..100,limit=1] run data merge entity @s {PickupDelay:0s}

tag @p[tag=exp.has_active_drone,predicate=expansion:compare_score/unique_id] remove exp.has_active_drone