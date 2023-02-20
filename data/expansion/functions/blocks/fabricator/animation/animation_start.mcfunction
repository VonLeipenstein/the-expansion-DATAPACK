# funni formula to calculate the correct frame offset for the animation
execute store result score @s exp.value run time query gametime
scoreboard players set @s exp.counter_1 24000
scoreboard players operation @s exp.value %= @s exp.counter_1
scoreboard players set @s exp.counter_1 340
scoreboard players operation @s exp.value %= @s exp.counter_1
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get @s exp.value

