# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/abort
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/launching/countdown (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.timer_2 matches 201.. run title @p[tag=exp.inside_rocket] title {"text":""}
execute if score @s exp.timer_2 matches 201.. run title @p[tag=exp.inside_rocket] subtitle [{"text":"Hold [","color":"gold","bold":true},{keybind:"key.jump"},{text:"] to Launch"}]

execute unless score @s exp.timer_2 matches 200.. run title @p[tag=exp.inside_rocket] subtitle {"text":""}
execute unless score @s exp.timer_2 matches 200.. run title @p[tag=exp.inside_rocket] title {"text":"Launch Aborted!","color":"red","bold":true}

scoreboard players reset @s exp.timer_2

stopsound @a player expansion:rocket.launch