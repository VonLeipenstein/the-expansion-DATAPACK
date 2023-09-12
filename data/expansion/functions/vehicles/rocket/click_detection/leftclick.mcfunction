execute unless predicate expansion:utility/sneak as @e[type=minecraft:interaction,tag=exp.rocket_rcdet,nbt={attack:{}},limit=1,sort=nearest] on vehicle if entity @s[type=item_display,tag=exp.rocket_display] on vehicle run function expansion:vehicles/rocket/demount

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_lc