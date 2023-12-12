# store the spaceships scores into the player
execute at @s on vehicle on vehicle run function expansion:vehicles/spaceship/transition/store_scores

say transition start

# copy the spaceship item over to the players head slot item
execute unless data entity @s Inventory[{Slot:103b}].id run item replace entity @s armor.head with minecraft:stick{spaceship_backup_stick:1b} 1
execute on vehicle run data modify storage exp.spaceship_backup data set from entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3]
item modify entity @s armor.head expansion:spaceship/backup_in_helmet

# kill any markers present
execute if entity @s[tag=exp.markertag1] run function expansion:vehicles/spaceship/markers/kill_markers

# tag all players riding this spaceship
execute on vehicle on passengers run scoreboard players set @s exp.cooldown 20
execute on vehicle on passengers run tag @s add exp.transitioning
execute on vehicle on passengers run tag @s add exp.transition_temp

# kill the spaceship
execute on vehicle on vehicle run function expansion:vehicles/spaceship/transition/destroy_old