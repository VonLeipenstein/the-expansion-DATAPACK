# >>> generated function callers >>>
# Callers for expansion:mechanics/oxygen/suffocate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/oxygen/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# The oxygen score is allowed to be below 0, correct that here
execute if score @s exp.oxygen_lvl matches ..-1 run scoreboard players set @s exp.oxygen_lvl 0

damage @s 1.5 generic

function expansion:utilities/error_messages/low_oxygen