# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/reload/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# if the weapon doesn't use ammo, succeed
execute if score @s exp.max_ammo matches 0 run return fail

# if the weapon uses and has ammo, succeed
execute if score @s exp.ammo matches 1.. run return 1

# else fail
return 1