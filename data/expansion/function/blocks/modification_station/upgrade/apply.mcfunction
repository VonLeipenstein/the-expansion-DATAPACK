# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/apply
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/finish (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.spaceship] run return run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/apply_upgrade
execute if entity @s[tag=exp.moon_buggy] run return run function expansion:blocks/modification_station/upgrade/mech/apply_mods/apply_upgrade
execute if entity @s[tag=exp.mech] run return run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/apply_upgrade