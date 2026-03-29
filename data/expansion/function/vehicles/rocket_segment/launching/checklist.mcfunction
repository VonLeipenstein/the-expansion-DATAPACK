#execute unless score @s exp.fuel_max matches 1.. run return run say this rocket has no fuel tank
#execute unless score @s exp.fuel_level matches 1.. run return run say This rockets fuel tank is empty

execute if score @s exp.weight > @s exp.engine_thrust run say this rocket is too heavy
execute if score @s exp.weight > @s exp.engine_thrust run return fail

scoreboard players set @s exp.dimension 1

return 1