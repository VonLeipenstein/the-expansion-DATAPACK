# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/inside
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/select_root_main (1 caller) [OK same-folder]
# <<< generated function callers <<<

## Runs as the rocket root entity: The lowest segment

# landing sequence
execute if entity @s[tag=exp.landing] run return run function expansion:vehicles/rocket_segment/landing/main

# launching can only happen when the rocket has a bottom segment
execute unless entity @s[tag=exp.bottom_segment] run return fail

# launch initiation and countdown
execute if score #temp exp.jump matches 1 unless score @s exp.timer_2 matches 1.. if function expansion:vehicles/rocket_segment/launching/checklist run scoreboard players set @s exp.timer_2 220
execute if score @s exp.timer_2 matches 1.. run function expansion:vehicles/rocket_segment/launching/countdown

# run when the countdown has succeeded and the launch is initiated
execute if entity @s[tag=exp.launching] run return run function expansion:vehicles/rocket_segment/launching/main
