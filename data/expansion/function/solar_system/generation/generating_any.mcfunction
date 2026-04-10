# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/generating_any
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:tick (1 caller) [OK above +2]
# <<< generated function callers <<<

execute if score #generated_solar_system exp.bool matches 1 run return fail

execute if score #generate_earth exp.bool matches 1 run return 1
execute if score #generate_moon exp.bool matches 1 run return 1
execute if score #generate_mars exp.bool matches 1 run return 1
execute if score #generate_venus exp.bool matches 1 run return 1
execute if score #generate_jupiter exp.bool matches 1 run return 1
execute if score #generate_europa exp.bool matches 1 run return 1

return fail