# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/has_launchpad
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/rocket/launch_checklist (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket/launch_init (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on vehicle if entity @s[tag=exp.launch_pad] run return 1

return fail