execute if block ^ ^ ^0.05 #expansion:expansion_air run tp @s ^ ^ ^0.05
scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches ..110 at @s if block ^ ^ ^0.05 #expansion:expansion_air run function expansion:utilities/raycast/placement/loop
