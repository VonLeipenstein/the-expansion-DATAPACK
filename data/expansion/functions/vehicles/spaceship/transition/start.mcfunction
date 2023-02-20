scoreboard players operation @s exp.speed = @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.speed
scoreboard players operation @s exp.spaceship_cmd = @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.spaceship_cmd
kill @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
kill @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest]

scoreboard players set @s exp.cooldown 20
tag @s add exp.transitioning