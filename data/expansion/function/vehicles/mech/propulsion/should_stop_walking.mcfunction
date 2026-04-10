# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/should_stop_walking
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# the mech should stop walking if:
# - only if the mech is walking
# - the mech is not on the ground
# - no input is given

# only proceed if the mech is walking
execute unless entity @s[tag=exp.mech_walking] run return fail

# fail if there is input BUT the player is jumping
execute if entity @s[tag=exp.mech_jumping,tag=!exp.mech_jumped] run return 1

# if movement cooldown is active
execute if score @s exp.cooldown matches 1.. run return 1

# fail if there is any other input
execute if score @s exp.warmup matches 1 run return fail

return 1