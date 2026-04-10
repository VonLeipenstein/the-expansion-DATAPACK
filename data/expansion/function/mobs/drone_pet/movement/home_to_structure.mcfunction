# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/movement/home_to_structure
# Total callers: 8 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/drone_pet/structure_scan/determine_direction (8 callers) [WARN side/down 2]
# <<< generated function callers <<<

# apply different speeds and precisions depending on the distance from the desired floating point
execute if block ^ ^ ^1.1 #expansion:air if entity @p[predicate=expansion:compare_score/unique_id,distance=30..40] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.05 ~ ~
execute if block ^ ^ ^1.1 #expansion:air if entity @p[predicate=expansion:compare_score/unique_id,distance=10..30] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute if block ^ ^ ^1.1 #expansion:air if entity @p[predicate=expansion:compare_score/unique_id,distance=0..10] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~

execute if entity @p[predicate=expansion:compare_score/unique_id,distance=40..] run function expansion:mobs/drone_pet/movement/too_far

execute unless block ^ ^ ^1.1 #expansion:air run function expansion:mobs/drone_pet/movement/blocked

