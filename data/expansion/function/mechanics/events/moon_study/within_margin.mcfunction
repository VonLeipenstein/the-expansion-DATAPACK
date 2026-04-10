# >>> generated function callers >>>
# Callers for expansion:mechanics/events/moon_study/within_margin
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/events/moon_study/calculation (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result score #temp exp.hold_value run scoreboard players operation #temp exp.time /= #temp exp.rotation

# succeed if within margin
execute if score #temp exp.hold_value matches 90..110 run return run scoreboard players reset #temp exp.hold_value

# fail otherwise
scoreboard players reset #temp exp.hold_value
return fail