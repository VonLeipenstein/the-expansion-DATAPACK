# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/summon/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/summon/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

# give the drone the same id as the player
scoreboard players operation @s exp.unique_id = #temp exp.unique_id
execute on passengers run scoreboard players operation @s exp.unique_id = #temp exp.unique_id
scoreboard players reset #temp exp.unique_id

# copy model to drone
item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# sound
playsound expansion:drone.error neutral @a[distance=..16] ~ ~ ~

# remove new score
tag @s remove exp.pet_drone.new