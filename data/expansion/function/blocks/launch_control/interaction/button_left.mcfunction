# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/interaction/button_left
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [OK same-folder]
# - function expansion:blocks/launch_pad/interaction/rightclick (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless predicate expansion:passengers/launchpad_link run return 1

scoreboard players remove @s exp.destination 1
execute if score @s exp.origin = @s exp.destination run scoreboard players remove @s exp.destination 1
execute if score @s exp.destination matches ..-1 run scoreboard players set @s exp.destination 3
execute if score @s exp.origin = @s exp.destination run scoreboard players remove @s exp.destination 1

scoreboard players operation #temp exp.destination = @s exp.destination
execute on passengers if entity @s[tag=exp.pad_link] on origin run scoreboard players operation @s exp.destination = #temp exp.destination
scoreboard players reset #temp exp.destination

function expansion:blocks/launch_control/reload

return 1