# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/has_passenger
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:blocks/launch_pad/occupied (1 caller) [OK same-folder]
# - function expansion:blocks/rocket_parts/cockpit/place (1 caller) [WARN side/down 3]
# - function expansion:blocks/rocket_parts/top/place (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute on passengers if entity @s[type=!snowball,type=!minecraft:interaction,type=!marker] run return 1

return fail