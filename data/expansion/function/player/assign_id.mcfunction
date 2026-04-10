# >>> generated function callers >>>
# Callers for expansion:player/assign_id
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:player/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add #player_ids exp.unique_id 1
scoreboard players operation @s exp.unique_id = #player_ids exp.unique_id
