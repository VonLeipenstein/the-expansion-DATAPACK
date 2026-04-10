# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/target_nearby
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=..5] run return 1

execute on passengers if entity @s[tag=exp.mech_targeter] on origin if entity @s[distance=..5] run return 1

return fail