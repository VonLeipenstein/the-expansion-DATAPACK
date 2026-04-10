# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/oxygen_link/check_inside_vehicle
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/terraformer/oxygen_link/cube (1 caller) [OK same-folder]
# - function expansion:blocks/terraformer/oxygen_link/sphere (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on origin if entity @s[tag=exp.inside_vehicle] run return 1

return fail
