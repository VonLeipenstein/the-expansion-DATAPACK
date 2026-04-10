# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/shoot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/action (1 caller) [OK same-folder]
# <<< generated function callers <<<

# cast a freeze ray as defined in the projectiles.
# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players set #temp exp.max_range 100
scoreboard players set #temp exp.speed 1

execute summon marker run function expansion:projectiles/freeze_ray/cast