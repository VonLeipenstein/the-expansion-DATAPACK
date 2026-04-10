# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/markers/deactivate_markers
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 2/4 honored
# Sources:
# - function expansion:vehicles/spaceship/exits/passenger (1 caller) [WARN side/down 2]
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +1]
# - function expansion:vehicles/spaceship/markers/marker_switcher (1 caller) [OK same-folder]
# - function expansion:vehicles/spaceship/summon/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.planet_marker] run function expansion:vehicles/spaceship/markers/hide_marker

tag @s remove exp.has_active_markers