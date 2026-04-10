# >>> generated function callers >>>
# Callers for expansion:spacesuits/integrity/missing_piece
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/integrity/iterate_over_armor (1 caller) [OK same-folder]
# - function expansion:spacesuits/integrity/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# If this suit piece is missing, deal environment damage to all other suit pieces
scoreboard players operation #temp exp.damage = @s exp.temperature
execute if score #temp exp.damage matches ..-1 run scoreboard players operation #temp exp.damage *= #-1 exp.const

# Damage all pieces
function expansion:spacesuits/temperature_damage/damage_all

scoreboard players reset #temp exp.damage