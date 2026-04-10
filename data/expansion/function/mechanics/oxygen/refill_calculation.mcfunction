# >>> generated function callers >>>
# Callers for expansion:mechanics/oxygen/refill_calculation
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:items/oxygen_tank/refill_equipment (1 caller) [WARN side/down 4]
# - function expansion:mechanics/oxygen/fill_tank_from_buggy (1 caller) [OK same-folder]
# - function expansion:spacesuits/oxygen/replenish_from_tank (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# add and remove oxygen from the source to the target
scoreboard players operation #missing exp.oxygen_lvl = #target exp.oxygen_max
scoreboard players operation #missing exp.oxygen_lvl -= #target exp.oxygen_lvl
execute if score #missing exp.oxygen_lvl > #source exp.oxygen_lvl run scoreboard players operation #missing exp.oxygen_lvl = #source exp.oxygen_lvl

# update the source and targets oxygen levels
scoreboard players operation #target exp.oxygen_lvl += #missing exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_lvl -= #missing exp.oxygen_lvl

# return the new target lvl
return run scoreboard players get #target exp.oxygen_lvl