execute on target run tag @s add exp.inside_rocket
execute on target run tag @s add exp.inside_vehicle

execute on target if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/force_dismiss

# make the player ride the correct seat
execute on vehicle if entity @s[type=minecraft:item_display,tag=exp.rocket_display] on vehicle on passengers if entity @s[type=armor_stand,tag=exp.rocket_seat] run ride @p mount @s
execute on vehicle if entity @s[type=minecraft:item_display,tag=exp.rocket_display] on vehicle on passengers on passengers run tag @s[type=player] add exp.rocket_pilot
execute on vehicle if entity @s[type=minecraft:armor_stand,tag=exp.rocket_passenger_seat] run ride @p mount @s

data remove entity @s interaction