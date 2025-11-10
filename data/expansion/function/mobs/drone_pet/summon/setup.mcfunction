# give the drone the same id as the player
scoreboard players operation @s exp.unique_id = #search exp.unique_id
execute on passengers run scoreboard players operation @s exp.unique_id = #search exp.unique_id

# copy model to drone
item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# sound
playsound expansion:drone.error neutral @a[distance=..16] ~ ~ ~

# remove new score
tag @s remove exp.pet_drone.new