# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/raycast/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/raycast/cast (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/raycast/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# return a success if this player is found
execute if entity @s[dx=0] run return 1

execute unless block ~ ~ ~ #expansion:air run return fail

execute positioned ^ ^ ^.5 run return run function expansion:mobs/mech/behavior/targeting/raycast/loop

return fail
