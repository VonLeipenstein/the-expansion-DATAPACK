# store the spaceships scores into the player
execute at @s as @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] run function expansion:vehicles/spaceship/transition/store_scores

# copy the spaceship item over to the players head slot item
execute unless data entity @s Inventory[{Slot:103b}].id run item replace entity @s armor.head with minecraft:stick{spaceship_backup_stick:1b} 1
data modify storage exp.spaceship_backup data set from entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] ArmorItems[3]
item modify entity @s armor.head expansion:spaceship/backup_in_helmet

#kill any markers present
execute if entity @s[tag=exp.markertag1] run function expansion:vehicles/spaceship/markers/kill_markers

# kill the spaceship
execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s

scoreboard players set @s exp.cooldown 20
tag @s add exp.transitioning
tag @s add exp.tp_to_marker