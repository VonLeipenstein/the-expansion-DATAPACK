scoreboard players operation @s exp.speed = @p[tag=exp.spaceship_pilot] exp.speed
scoreboard players operation @s exp.fuel_level = @p[tag=exp.spaceship_pilot] exp.fuel_level
scoreboard players operation @s exp.value = @p[tag=exp.spaceship_pilot] exp.value
scoreboard players operation @s exp.counter_1 = @p[tag=exp.spaceship_pilot] exp.counter_1
scoreboard players operation @s exp.delay = @p[tag=exp.spaceship_pilot] exp.delay
scoreboard players operation @s exp.unique_id = @p[tag=exp.spaceship_pilot] exp.unique_id
scoreboard players operation @s exp.fuel_max = @p[tag=exp.spaceship_pilot] exp.fuel_max
scoreboard players operation @s exp.passenger_count = @p[tag=exp.spaceship_pilot] exp.passenger_count

execute on passengers if entity @s[type=item_display,tag=exp.spaceship_display] run data merge entity @s {transformation:{translation:[0.0f,2.0f,0.0f],scale:[0.7f,0.7f,0.7f]}}

function expansion:vehicles/spaceship/propulsion/speed_percentage
function expansion:utilities/fuel_percentage