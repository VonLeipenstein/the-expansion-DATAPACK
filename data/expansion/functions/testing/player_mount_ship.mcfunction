tag @s add exp.clicked_ship
execute at @s unless entity @s[tag=exp.inside_vehicle] as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,limit=1,sort=nearest] on vehicle if entity @s[tag=exp.spaceship,tag=!exp.being_modified] unless score @s exp.passenger_count matches 2.. run function expansion:vehicles/spaceship/enter/passenger
tag @s remove exp.clicked_ship