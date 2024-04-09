execute if score @s exp.timer_1 matches 0 run function expansion:vehicles/mech/actions/lefthand/equip/rocket
execute if score @s exp.timer_1 matches 0 run function expansion:vehicles/mech/actions/righthand/equip/rocket

scoreboard players add @s exp.timer_1 1
execute if score @s exp.timer_1 matches 40 run tag @s add exp.mech.action.left
execute if score @s exp.timer_1 matches 80 run tag @s add exp.mech.action.right
execute if score @s exp.timer_1 matches 80 run scoreboard players set @s exp.timer_1 0

# follow the player around on a timer
function expansion:mobs/mech/behavior/follow_player/main

# detect when the mech is walking to play the walking animation
execute store result score @s exp.x run data get entity @s Motion[0] 100000
execute store result score @s exp.z run data get entity @s Motion[2] 100000
scoreboard players operation @s exp.x += @s exp.z
execute unless score @s exp.x matches 0 on passengers on passengers on passengers run scoreboard players set .w exp.wasd 1