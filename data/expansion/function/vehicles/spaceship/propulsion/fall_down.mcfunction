# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/fall_down
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/no_speed (1 caller) [OK same-folder]
# <<< generated function callers <<<

# cast a ray downwards
scoreboard players reset #temp exp.y
execute at @s store result score #temp exp.y run function expansion:utilities/altitude/cast

execute if score #temp exp.y matches ..10 run return fail

execute on passengers if entity @s[tag=exp.player_rotation] run rotate @s ~ 25

# fall down
scoreboard players operation #temp exp.speed = @s exp.speed
scoreboard players set @s exp.speed 60
function expansion:vehicles/spaceship/propulsion/fly
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players set #temp exp.speed 0