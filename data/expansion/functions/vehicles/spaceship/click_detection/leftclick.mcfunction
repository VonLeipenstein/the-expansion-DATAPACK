execute unless predicate expansion:utility/sneak positioned ^ ^ ^2.5 as @e[type=minecraft:interaction,tag=exp.spaceship_rcdet,distance=..2.5,limit=1,sort=nearest] on vehicle on passengers if entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] unless predicate expansion:passengers/player on vehicle run function expansion:vehicles/spaceship/demount

execute at @s if predicate expansion:nbt_checks/root_vehicle/spaceship if predicate expansion:dimension/space if entity @s[tag=exp.spaceship_pilot] run function expansion:vehicles/spaceship/markers/marker_switcher

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/spaceship_lc