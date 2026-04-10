# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/pilot_has_enough_fuel
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/rocket/launch_checklist (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket/launch_init (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.fuel_level = @s exp.fuel_max run return 1

scoreboard players reset #temp exp.counter_1

execute store result score #temp exp.counter_1 on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run clear @s blaze_powder 0

execute if score #temp exp.counter_1 matches 16.. run return 1

return fail