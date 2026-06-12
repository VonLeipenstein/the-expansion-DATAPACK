# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/interaction/button_left
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [OK same-folder]
# - function expansion:blocks/launch_pad/interaction/rightclick (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove @s exp.destination 1

execute if score @s exp.origin = @s exp.destination run scoreboard players remove @s exp.destination 1

execute if score @s exp.destination matches ..-1 run scoreboard players set @s exp.destination 3

execute if score @s exp.origin = @s exp.destination run scoreboard players remove @s exp.destination 1

function expansion:blocks/launch_control/reload

return 1