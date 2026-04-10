# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/take_tank
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/tank_swap (1 caller) [OK same-folder]
# <<< generated function callers <<<

item replace entity @p weapon.mainhand from entity @s container.0

item replace entity @s container.0 with minecraft:air

scoreboard players set @s exp.timer_1 0

tag @s remove exp.tank_inside

function expansion:blocks/compressor/compress/stop