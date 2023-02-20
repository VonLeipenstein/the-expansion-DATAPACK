execute if score @s exp.gravity_delay matches -10.. run scoreboard players remove @s exp.gravity_delay 1
execute if score @s exp.gravity_delay matches 0 run attribute @s minecraft:generic.armor modifier add 69-34f-243a-f3e-34b "levitation_fix" 10 add 

execute if score @s exp.gravity_delay matches 0 run effect give @s levitation 1 255 true
execute if score @s exp.gravity_delay matches -5 run effect clear @s levitation
execute if score @s exp.gravity_delay matches -5 run effect give @s levitation 1 254 true
execute if score @s exp.gravity_delay matches -10 run effect clear @s levitation
execute if score @s exp.gravity_delay matches -10 run tp @s ~ ~ ~
execute if score @s exp.gravity_delay matches -10 run attribute @s minecraft:generic.armor modifier remove 69-34f-243a-f3e-34b
