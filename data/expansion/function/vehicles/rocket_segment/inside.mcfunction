# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/inside
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/select_root_main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# run when the countdown has succeeded and the launch is initiated
execute if entity @s[tag=exp.launching] run return run function expansion:vehicles/rocket_segment/launching/propulsion

execute if entity @s[tag=exp.landing] run return run function expansion:vehicles/rocket_segment/landing/main

execute if score #temp exp.jump matches 1 unless score @s exp.timer_2 matches 1.. if function expansion:vehicles/rocket_segment/launching/checklist run scoreboard players set @s exp.timer_2 220
execute if score @s exp.timer_2 matches 1.. run function expansion:vehicles/rocket_segment/launching/countdown