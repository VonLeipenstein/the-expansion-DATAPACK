# funni formula to calculate the correct frame offset for the animation
execute store result score @s exp.value run time query gametime
scoreboard players set @s exp.counter_1 24000
scoreboard players operation @s exp.value %= @s exp.counter_1
scoreboard players set @s exp.counter_1 260
scoreboard players operation @s exp.value %= @s exp.counter_1
execute store result entity @e[type=item_display,tag=exp.assembler_display,limit=1,sort=nearest] item.tag.display.color int 1 run scoreboard players get @s exp.value

