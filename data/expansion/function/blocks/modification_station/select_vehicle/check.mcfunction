# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/select_vehicle/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin if entity @s[distance=..50] run return 1

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/select_vehicle/deselect

scoreboard players reset @s exp.hold_value