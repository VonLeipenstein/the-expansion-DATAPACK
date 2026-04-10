# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/prepare
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/oxygen_link/create (1 caller) [OK same-folder]
# <<< generated function callers <<<

# link other entities
data modify storage expansion:owner data.current_UUID set from entity @s UUID

# signal that an entity should be connected
scoreboard players set #temp exp.oxygen_lvl 1