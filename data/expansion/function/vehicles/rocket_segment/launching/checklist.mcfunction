# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/checklist
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# checks if the rocket is allowed to launch

# A rocket may launch if it has fuel and an engine.
# However, it will explode without a nose cone, scattering the individual parts.
# If it has insufficient launch fuel, it will not reach orbit and fall back

# rocket is not launching or landing
execute if entity @s[tag=exp.launching] run return fail
execute if entity @s[tag=exp.landing] run return fail

return 1