# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/buggy/selected
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/modification_station/gui/main (1 caller) [WARN side/down 3]
# - function expansion:blocks/modification_station/upgrade/init (1 caller) [OK above +1]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin if entity @s[tag=exp.moon_buggy] run return 1

return fail