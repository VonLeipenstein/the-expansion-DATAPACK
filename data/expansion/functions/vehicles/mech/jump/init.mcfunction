execute if score @s exp.jump matches 41.. run scoreboard players set @s exp.jump 40

execute store result score pos exp.x run data get entity @s Pos[0] 1000
execute store result score pos exp.z run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^0.1 ~ 0
execute store result score posDelta exp.x run data get entity @s Pos[0] 1000
execute store result score posDelta exp.z run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.05 run scoreboard players operation posDelta exp.x -= pos exp.x
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s exp.jump
execute store result entity @s Motion[2] double 0.05 run scoreboard players operation posDelta exp.z -= pos exp.z



scoreboard players reset @s exp.jump