scoreboard players add @s exp.bool 1
execute if score @s exp.bool matches 2 run scoreboard players set @s exp.bool 0

execute if score @s[tag=!exp.scanning,tag=!exp.initiate] exp.bool matches 1 run tag @s add exp.initiate
execute if score @s[tag=!exp.scanning] exp.bool matches 1 run tag @s add exp.scanning

execute if score @s[tag=exp.scanning] exp.bool matches 0 run function expansion:blocks/oxygenator/oxygenate/fail

#function expansion:utilities/sounds/button