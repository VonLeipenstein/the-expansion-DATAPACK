# >>> generated function callers >>>
# Callers for expansion:blocks/portal/particles_start
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/portal/activation/periodic_checkup (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute positioned ^-1.69 ^2.1 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^-1.2 ^3.3 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^ ^3.8 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^1.2 ^3.3 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^1.69 ^2.1 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^1.2 ^0.9 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos
execute positioned ^-1.2 ^0.9 ^ run function expansion:blocks/portal/particles/idle with entity @s item.components."minecraft:custom_data".portal_array[0].Pos

execute if predicate expansion:chance/050_chance run particle firework ~ ~2.1 ~ 0 0 0 0.02 1