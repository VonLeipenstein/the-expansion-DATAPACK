# If this suit piece is missing, deal environment damage to all other suit pieces
scoreboard players operation #temp exp.damage = @s exp.temperature
execute if score #temp exp.damage matches ..-1 run scoreboard players operation #temp exp.damage *= #-1 exp.const

# Damage all pieces
function expansion:spacesuits/temperature_damage/damage_all

scoreboard players reset #temp exp.damage