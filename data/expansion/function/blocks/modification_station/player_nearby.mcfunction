# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/player_nearby
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# run when the player is using the block
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/modification_station/interaction

# rotate the little hud vehicle
execute on passengers if entity @s[tag=exp.modstation_display] at @s run rotate @s ~1 ~
