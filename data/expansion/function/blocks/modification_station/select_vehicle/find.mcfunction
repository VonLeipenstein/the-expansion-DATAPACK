# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/select_vehicle/find
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/interaction (1 caller) [OK above +1]
# <<< generated function callers <<<

# store the vehicles UUID so I can match it to the snowball
data modify storage expansion:owner data.current_UUID set from entity @s UUID

# signal the main block to finish the selecting process
scoreboard players set #temp exp.bool 1