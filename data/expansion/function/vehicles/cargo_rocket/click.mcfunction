advancement revoke @s only expansion:utility/cargo_rocket_lc
advancement revoke @s only expansion:utility/cargo_rocket_rc

tag @s add exp.clicked
# when rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.cargo_rocket_rcdet,nbt={attack:{}},distance=..10] on vehicle run function expansion:vehicles/cargo_rocket/destroy
tag @s remove exp.clicked