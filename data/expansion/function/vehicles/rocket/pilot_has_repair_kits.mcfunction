# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/pilot_has_repair_kits
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/rocket/launch_checklist (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket/launch_init (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players reset #temp exp.counter_1

execute store result score #temp exp.counter_1 on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run clear @s *[custom_data~{exp_item:{name:"repair_kit"}}] 0

execute if score #temp exp.counter_1 matches 2.. run return 1

return fail