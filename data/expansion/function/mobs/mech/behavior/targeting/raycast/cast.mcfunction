# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/raycast/cast
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/find_new (1 caller) [OK above +1]
# - function expansion:mobs/mech/behavior/targeting/init (1 caller) [OK above +1]
# - function expansion:mobs/mech/behavior/targeting/target_visible (1 caller) [OK above +1]
# <<< generated function callers <<<

# cast a ray towards the current entity
execute facing entity @s eyes run return run function expansion:mobs/mech/behavior/targeting/raycast/loop

return fail