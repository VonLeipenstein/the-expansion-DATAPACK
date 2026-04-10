# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/init
# Total callers: 0
# None found
# <<< generated function callers <<<

# Step 1: cast a ray to the current target to determine if it is still within vision
# Step 2: if the current target is not visible, find a new target
execute if function expansion:mobs/mech/behavior/targeting/has_target rotated as @s anchored eyes positioned ^ ^ ^ unless function expansion:mobs/mech/behavior/targeting/target_visible run function expansion:mobs/mech/behavior/targeting/find_new

# cast a ray to all possible targets within range to see if they are within vision
execute rotated as @s anchored eyes positioned ^ ^ ^ as @a[distance=..50] if function expansion:mobs/mech/behavior/targeting/raycast/cast run data modify storage expansion:owner data.current_UUID set from entity @s UUID

# has a chance to not switch targets, choose the nearest target or choose a random target
#execute store result score #temp exp.math run random value 0..2
#execute unless score #temp exp.math matches 1.. run return fail
#execute if score #temp exp.math matches 1 run data modify storage expansion:owner data.current_UUID set from entity @r[distance=..50] UUID
#execute if score #temp exp.math matches 2 run data modify storage expansion:owner data.current_UUID set from entity @p[distance=..50] UUID

# link it
function expansion:utilities/snowball_link/link_from_storage