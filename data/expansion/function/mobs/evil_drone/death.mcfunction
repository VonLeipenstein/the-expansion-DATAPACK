execute on vehicle run kill @s

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
particle minecraft:lava ~ ~ ~ 0 0 0 1 10

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.7

function expansion:utilities/erase_entity
loot spawn ~ ~ ~ loot expansion:mobs/evil_drone

