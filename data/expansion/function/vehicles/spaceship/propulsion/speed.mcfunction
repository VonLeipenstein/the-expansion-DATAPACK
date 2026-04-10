# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/speed
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# speed for bigger FOV
#execute on passengers if entity @s[tag=exp.spaceship_seat] on passengers run effect give @s speed 1 4 true
execute on passengers if entity @s[tag=exp.spaceship_seat] on passengers run effect give @s resistance 1 4 true

# Detect player input
execute if function expansion:vehicles/spaceship/input/forward if score @s exp.speed < @s exp.speed_max if score @s exp.speed matches -10.. run scoreboard players add @s exp.speed 1
execute if function expansion:vehicles/spaceship/input/backward if score @s exp.speed <= @s exp.speed_max if score @s exp.speed matches 11.. run scoreboard players remove @s exp.speed 1

# hyperjump
execute if entity @s[tag=exp.hyperjumping] run function expansion:vehicles/spaceship/hyperdrive/stop
execute if function expansion:vehicles/spaceship/input/jump if predicate expansion:dimension/space run tag @s add exp.hyperjumping
execute if entity @s[tag=exp.hyperjumping] run function expansion:vehicles/spaceship/hyperdrive/charge

# Prevent flying when the fuel is gone
execute unless score @s exp.fuel_level matches 1.. run scoreboard players set @s exp.speed 10

# return value
return run scoreboard players get @s exp.speed