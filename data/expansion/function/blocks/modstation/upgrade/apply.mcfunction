# >>> generated function callers >>>
# Callers for expansion:blocks/modstation/upgrade/apply
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modstation/upgrade/finish (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.spaceship] run return run function expansion:blocks/modstation/upgrade/spaceship/apply_mods/apply_upgrade
execute if entity @s[tag=exp.moon_buggy] run return run function expansion:blocks/modstation/upgrade/mech/apply_mods/apply_upgrade
execute if entity @s[tag=exp.mech] run return run function expansion:blocks/modstation/upgrade/buggy/apply_mods/apply_upgrade