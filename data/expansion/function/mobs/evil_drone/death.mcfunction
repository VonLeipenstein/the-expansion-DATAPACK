execute on passengers run kill @s
execute on vehicle on passengers run kill @s
execute on vehicle run kill @s
kill @s

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
particle minecraft:lava ~ ~ ~ 0 0 0 1 10

playsound minecraft:entity.explode hostile @a ~ ~ ~ 0.7

function expansion:utilities/erase_entity
loot spawn ~ ~ ~ loot expansion:mobs/evil_drone