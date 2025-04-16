scoreboard players remove @s exp.fuel_level 2
execute unless score @s exp.fuel_level matches 1.. run scoreboard players set @s exp.speed 0
function expansion:utilities/fuel_percentage