# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/interaction/button_right
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [OK same-folder]
# - function expansion:blocks/launch_pad/interaction/rightclick (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add @s exp.destination 1

execute if score @s exp.origin = @s exp.destination run scoreboard players add @s exp.destination 1

execute if score @s exp.destination matches 4.. run scoreboard players set @s exp.destination 0

execute if score @s exp.origin = @s exp.destination run scoreboard players add @s exp.destination 1

function expansion:blocks/launch_pad/reload

return 1