# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/drone_pet_rc (1 caller)
# <<< generated function callers <<<

scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute positioned ^ ^ ^2 as @n[type=interaction,tag=exp.pet_drone_rcdet,predicate=expansion:compare_score/unique_id,distance=..10] on vehicle run tag @s add exp.searching_structure

advancement revoke @s only expansion:utility/drone_pet_rc