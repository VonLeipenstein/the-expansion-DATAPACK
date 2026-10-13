# >>> generated function callers >>>
# Callers for expansion:blocks/modstation/upgrade/remove
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modstation/gui/buttons/remove_button (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute if entity @s[tag=exp.spaceship] run return run function expansion:blocks/modstation/upgrade/spaceship/remove_mods/initiate
execute if entity @s[tag=exp.mech] run return run function expansion:blocks/modstation/upgrade/mech/remove_mods/initiate
execute if entity @s[tag=exp.moon_buggy] run function expansion:blocks/modstation/upgrade/buggy/remove_mods/initiate