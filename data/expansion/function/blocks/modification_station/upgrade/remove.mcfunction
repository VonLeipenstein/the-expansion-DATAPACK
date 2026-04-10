# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/remove
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modification_station/gui/buttons/remove_button (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute if entity @s[tag=exp.spaceship] run return run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate
execute if entity @s[tag=exp.mech] run return run function expansion:blocks/modification_station/upgrade/mech/remove_mods/initiate
execute if entity @s[tag=exp.moon_buggy] run function expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate