# >>> generated function callers >>>
# Callers for expansion:solar_system/generation/start_system_generation
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:_commands/regenerate_solar_system (1 caller) [WARN side/down 3]
# - function expansion:load (1 caller) [OK above +2]
# <<< generated function callers <<<

# prompt all the planets to generate
scoreboard players set #generate_earth exp.bool 1
scoreboard players set #generate_moon exp.bool 1
scoreboard players set #generate_mars exp.bool 1
scoreboard players set #generate_venus exp.bool 1
scoreboard players set #generate_jupiter exp.bool 1
scoreboard players set #generate_europa exp.bool 1