execute unless predicate expansion:utility/sneak as @n[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}}] on vehicle if entity @s[tag=exp.rocket] run function expansion:vehicles/rocket/demount

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_lc