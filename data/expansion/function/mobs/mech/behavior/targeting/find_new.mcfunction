# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/find_new
# Total callers: 3 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/init (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/main (2 callers) [OK same-folder]
# <<< generated function callers <<<

# reset the target
data modify storage expansion:owner data.current_UUID set from entity @s UUID

# cast a ray to all possible targets within range to see if they are within vision
execute rotated as @s anchored eyes positioned ^ ^ ^ positioned ~ ~1 ~ as @e[type=#expansion:mech_targets,distance=..50,sort=random] if function expansion:mobs/mech/behavior/targeting/raycast/cast run data modify storage expansion:owner data.current_UUID set from entity @s UUID

# link the new target (or myself)
function expansion:utilities/snowball_link/link_from_storage

# if no new target was found, do a desperate jump in an attempt to get a vantage point to spot players behind cover 
execute unless function expansion:mobs/mech/behavior/targeting/has_target on vehicle unless score @s exp.counter_1 matches 1.. unless score @s exp.rotation matches 4 unless score @s exp.rotation matches 0 run scoreboard players set @s exp.counter_1 20