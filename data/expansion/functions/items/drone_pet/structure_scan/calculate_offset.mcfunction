execute positioned ~ ~ ~10 store result score @s exp.z run locate structure #expansion:drone_locate
execute positioned ~10 ~ ~ store result score @s exp.x run locate structure #expansion:drone_locate

scoreboard players operation @s exp.x -= @s exp.distance
scoreboard players operation @s exp.z -= @s exp.distance

execute if score @s exp.distance matches 100.. if score @s exp.x matches -10..10 if score @s exp.z matches -10..10 unless entity @s[scores={exp.x=0,expz=0}] run tag @s add exp.located_structure

execute if score @s exp.distance matches ..99 if score @s exp.x matches -10..10 if score @s exp.z matches -10..10 unless entity @s[scores={exp.x=0,expz=0}] run tellraw @p[tag=exp.has_active_drone] [{"text":"[","color":"green"},{"selector":"@s","color":"green"},{"translate":"exp_drone_found","color":"green"}]

execute unless entity @s[scores={exp.x=-10..10,exp.z=-10..10}] run tellraw @p[tag=exp.has_active_drone] [{"text":"[","color":"green"},{"selector":"@s","color":"green"},{"translate":"exp_drone_error","color":"green"}]
