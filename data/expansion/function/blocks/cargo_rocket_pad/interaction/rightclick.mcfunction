advancement revoke @s only expansion:utility/cargo_rocket_pad_rc

tag @s add exp.clicked
# when holding cargo rocket place rocket and give beacon
execute if predicate expansion:nbt_checks/selected_item/vehicles/cargo_rocket as @n[type=minecraft:interaction,tag=exp.cargo_rocket_pad_hitbox,nbt={interaction:{}},distance=..10] on vehicle run function expansion:blocks/cargo_rocket_pad/summon_rocket
tag @s remove exp.clicked