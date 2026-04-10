# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/interaction/button_left
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [OK same-folder]
# - function expansion:blocks/launch_pad/interaction/rightclick (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove @s exp.hold_value 1

execute if score @s exp.hold_value matches -1 run scoreboard players set @s exp.hold_value 3

execute if dimension minecraft:overworld if score @s exp.hold_value matches 0 run scoreboard players remove @s exp.hold_value 1
execute if dimension expansion:moon if score @s exp.hold_value matches 1 run scoreboard players remove @s exp.hold_value 1
execute if dimension expansion:mars if score @s exp.hold_value matches 2 run scoreboard players remove @s exp.hold_value 1
execute if dimension expansion:venus if score @s exp.hold_value matches 3 run scoreboard players remove @s exp.hold_value 1

execute if score @s exp.hold_value matches -1 run scoreboard players set @s exp.hold_value 3

return 1