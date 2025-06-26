execute on passengers if entity @s[tag=exp.player_rotation] run rotate @s ~ 25

# fall down
scoreboard players operation #temp exp.speed = @s exp.speed
scoreboard players set @s exp.speed 60
function expansion:vehicles/spaceship/propulsion/fly
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players set #temp exp.speed 0