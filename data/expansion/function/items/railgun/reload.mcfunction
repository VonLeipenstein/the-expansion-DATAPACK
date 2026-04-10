# >>> generated function callers >>>
# Callers for expansion:items/railgun/reload
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/railgun/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #temp exp.ammo 1

execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get #temp exp.ammo
item modify entity @s weapon.mainhand expansion:railgun/ammo

clear @s minecraft:iron_ingot 1

playsound expansion:railgun.reload player @a ~ ~ ~ 0.3 1 0