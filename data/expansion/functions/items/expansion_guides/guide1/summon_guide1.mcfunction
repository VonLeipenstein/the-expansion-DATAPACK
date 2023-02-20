function expansion:.commands/give_guide1
scoreboard players set @s give_guide1 0
scoreboard players enable @s give_guide1
scoreboard players reset @s exp.timer_1
item replace entity @s weapon.offhand with minecraft:air
tellraw @s ["",{"text":"The wisdom of the stars enlightens you! You invented space travel! [Moon Study: COMPLETED]","italic":true,"color":"aqua"},{"text":"\n "}]

