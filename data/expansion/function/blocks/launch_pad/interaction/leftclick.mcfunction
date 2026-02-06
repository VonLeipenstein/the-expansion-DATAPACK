advancement revoke @s only expansion:utility/launch_pad_lc

tag @s add exp.clicked
# when rocket is home or no rocket is assigned, destroy pad
execute as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={attack:{}},distance=..10] on vehicle run function expansion:blocks/launch_pad/destroy
tag @s remove exp.clicked