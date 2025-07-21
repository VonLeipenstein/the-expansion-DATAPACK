scoreboard players add @s exp.fuel_level 40

execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run clear @p minecraft:blaze_powder 1

execute unless score @s exp.fuel_level >= @s exp.fuel_max if function expansion:vehicles/rocket/pilot_has_fuel run function expansion:vehicles/rocket/fuel_loop