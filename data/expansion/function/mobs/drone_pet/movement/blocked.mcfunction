# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/movement/blocked
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/movement/home_to_structure (1 caller) [OK same-folder]
# <<< generated function callers <<<

tellraw @p[predicate=expansion:compare_score/unique_id,tag=exp.has_active_drone] [{text:"[",color:"green"},{selector:"@s",color:"green"},{translate:"exp_drone_hithead",color:"green"}]
tag @s remove exp.located_structure