# >>> generated function callers >>>
# Callers for expansion:spacesuits/temperature_damage/convert_to_percentage
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 0/4 honored
# Sources:
# - function expansion:spacesuits/integrity/damage/chest (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/integrity/damage/feet (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/integrity/damage/head (1 caller) [WARN side/down 3]
# - function expansion:spacesuits/integrity/damage/legs (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# calculate the percentage of durability that this damage amounts to, add 1 to fix a rounding error
scoreboard players operation #temp exp.damage *= #100000 exp.const
scoreboard players operation #temp exp.damage /= #temp exp.max_health
scoreboard players add #temp exp.damage 1
return run scoreboard players get #temp exp.damage