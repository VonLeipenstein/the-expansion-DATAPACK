# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/main (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute at @p[tag=exp.has_active_drone,predicate=expansion:compare_score/unique_id] unless entity @s[tag=exp.searching_structure] rotated ~ 0 positioned ^1 ^2 ^-1 run function expansion:mobs/drone_pet/movement/idle

execute if entity @s[tag=exp.searching_structure] run function expansion:mobs/drone_pet/structure_scan/main

function expansion:mobs/drone_pet/particles