# >>> generated function callers >>>
# Callers for expansion:items/transporter/first_transport/merge_room_id
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/transporter/give_score (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

execute store result storage expansion:transporter_room_id data.room_id int 1 run scoreboard players get #temp exp.unique_id
item modify entity @s container.0 expansion:transporter/assign_id