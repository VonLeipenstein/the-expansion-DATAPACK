# store the spaceships scores into the player
execute at @s as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] run function expansion:vehicles/spaceship/transition/store_scores
# copy the spaceship item over to the players head slot item
execute unless data entity @s Inventory[{Slot:103b}].id run item replace entity @s armor.head with minecraft:stick{spaceship_backup_stick:1b} 1
data modify storage exp.spaceship_backup data set from entity @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] ArmorItems[3]
item modify entity @s armor.head expansion:spaceship/backup_in_helmet

kill @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

scoreboard players set @s exp.cooldown 20
tag @s add exp.transitioning