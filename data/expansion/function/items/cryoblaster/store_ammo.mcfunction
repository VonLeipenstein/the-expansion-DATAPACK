# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/store_ammo
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get #temp exp.ammo

item modify entity @s weapon.mainhand expansion:cryoblaster/ammo

scoreboard players reset #temp exp.ammo