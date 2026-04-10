# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/health/hurt
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/health/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

say ouch

# mitigate damage if the iframes are active
execute if score @s exp.iframes matches 1.. run return run scoreboard players set @s exp.damage 0

scoreboard players set @s exp.iframes 10

scoreboard players operation @s exp.health -= @s exp.damage

execute if score @s exp.health matches ..0 run function expansion:vehicles/mech/health/die

scoreboard players set @s exp.damage 0