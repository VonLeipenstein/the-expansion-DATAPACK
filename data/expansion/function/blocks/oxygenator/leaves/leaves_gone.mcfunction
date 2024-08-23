function expansion:blocks/oxygenator/oxygenate/fail
execute if items block ~ ~ ~ container.4 * run scoreboard players set @s exp.cooldown 20
tag @s remove exp.leaves_depleted
