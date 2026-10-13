# >>> generated function callers >>>
# Callers for expansion:blocks/modstation/gui/buttons/remove_button
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/modstation/interaction (1 caller) [OK above +2]
# - function expansion:blocks/modstation/select_vehicle/select (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute unless score @s exp.timer_1 matches 1.. on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modstation/upgrade/remove

function expansion:utilities/sounds/button
