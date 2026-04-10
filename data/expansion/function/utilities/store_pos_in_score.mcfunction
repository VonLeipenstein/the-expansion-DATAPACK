# >>> generated function callers >>>
# Callers for expansion:utilities/store_pos_in_score
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:solar_system/transitions/to_space/from_planet (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/inside (1 caller) [WARN side/down 3]
# - function expansion:vehicles/spaceship/markers/distance_to_planet (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if entity @s[type=player] run say please dont run store_pos_in_score as a player, this kills performance
data modify storage expansion:temp Pos set from entity @s Pos
execute store result score @s exp.x run data get storage expansion:temp Pos[0]
execute store result score @s exp.y run data get storage expansion:temp Pos[1]
execute store result score @s exp.z run data get storage expansion:temp Pos[2]
data remove storage expansion:temp Pos