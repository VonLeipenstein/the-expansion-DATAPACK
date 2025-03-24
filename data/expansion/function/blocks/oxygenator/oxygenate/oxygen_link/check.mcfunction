execute on origin if entity @s[tag=exp.recieved_oxygen] run return run function expansion:blocks/oxygenator/oxygenate/give_oxygen

scoreboard players reset #temp exp.bool

execute on origin if entity @s[tag=exp.recieved_oxygen] run scoreboard players set #temp exp.bool 1

execute unless score #temp exp.bool matches 1 run function expansion:blocks/oxygenator/oxygenate/oxygen_link/remove

scoreboard players reset #temp exp.bool