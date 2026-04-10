# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/remove_display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/player_nearby (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.fabricator_display] run item replace entity @s container.0 with air
execute on passengers if entity @s[tag=exp.fabricator_display] run data merge entity @s {transformation:{translation:[0.0,0.1,0.0],scale:[0.0,0.0,0.0]}}