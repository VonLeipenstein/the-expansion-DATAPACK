# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/pilot_has_fuel
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/rocket/fuel (1 caller) [OK same-folder]
# - function expansion:vehicles/rocket/fuel_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] if items entity @s container.* blaze_powder run return 1

return fail