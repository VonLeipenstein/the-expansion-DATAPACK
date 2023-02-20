scoreboard players set @s[scores={exp.timer_1=1012015..}] exp.timer_1 1012007
scoreboard players add @s exp.timer_1 1
execute store result entity @s ArmorItems[3].tag.CustomModelData double 1 run scoreboard players get @s exp.timer_1