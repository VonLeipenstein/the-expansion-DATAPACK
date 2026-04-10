# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/force_dismiss
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 0/4 honored
# Sources:
# - function expansion:player/death (1 caller) [WARN side/down 3]
# - function expansion:vehicles/lunar_module/enter (1 caller) [WARN side/down 4]
# - function expansion:vehicles/rocket/enter/init (1 caller) [WARN side/down 5]
# - function expansion:vehicles/spaceship/enter/passenger (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

scoreboard players operation #search exp.unique_id = @s exp.unique_id

execute at @s as @n[type=minecraft:item_display,tag=exp.pet_drone,predicate=expansion:compare_score/unique_id,distance=..10] run function expansion:mobs/drone_pet/force_delete
