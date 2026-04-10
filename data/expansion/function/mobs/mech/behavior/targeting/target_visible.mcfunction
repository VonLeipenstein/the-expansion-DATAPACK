# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/target_visible
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/init (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# fail if no target is selected
execute unless function expansion:mobs/mech/behavior/targeting/has_target run return fail

# fail if the target is out of range
execute on origin unless entity @s[distance=..50] run return fail

# cast a ray towards the target, if it hits, the target is visible.
execute rotated as @s anchored eyes positioned ^ ^ ^ positioned ~ ~1 ~ on origin facing entity @s eyes run return run function expansion:mobs/mech/behavior/targeting/raycast/cast

return fail