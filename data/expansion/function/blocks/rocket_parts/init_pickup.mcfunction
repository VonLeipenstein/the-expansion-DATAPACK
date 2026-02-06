advancement revoke @s only expansion:utility/rocketpart_lc

tag @s add exp.clicked
execute as @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,nbt={attack:{}},distance=..10] if function expansion:utilities/remove_attack on vehicle run function expansion:blocks/rocket_parts/destroy
tag @s remove exp.clicked