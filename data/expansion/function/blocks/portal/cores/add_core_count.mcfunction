# >>> generated function callers >>>
# Callers for expansion:blocks/portal/cores/add_core_count
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/cores/insert_core (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add @s exp.hold_value 1

execute if score @s exp.hold_value matches 5 run function expansion:blocks/portal/activation/init