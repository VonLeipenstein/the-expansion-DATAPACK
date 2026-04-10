# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/valid_entity
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/create (1 caller) [WARN side/down 4]
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player (1 caller) [WARN side/down 4]
# - function expansion:blocks/terraformer/oxygen_link/init (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute if entity @s[type=interaction,tag=!exp.compressor.rcdet] run return fail

execute if entity @s[type=#expansion:wants_oxygen] run return 1

return fail
