advancement revoke @s only expansion:utility/cargo_rocket_pad_lc

tag @s add exp.clicked
# when rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.cargo_rocket_pad_hitbox,nbt={attack:{}},distance=..10] on vehicle run function expansion:blocks/cargo_rocket_pad/destroy
tag @s remove exp.clicked