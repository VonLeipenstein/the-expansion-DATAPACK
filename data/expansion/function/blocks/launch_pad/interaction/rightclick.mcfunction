advancement revoke @s only expansion:utility/launch_pad_rc

tag @s add exp.clicked
# when holding cargo rocket place rocket and give beacon
execute if predicate expansion:nbt_checks/selected_item/vehicles/cargo_rocket as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction on vehicle run function expansion:blocks/launch_pad/summon_rocket

# when holding a rocket
execute if predicate expansion:nbt_checks/selected_item/vehicles/rocket as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction on vehicle at @s run function expansion:vehicles/rocket/summon/init

# when holding a rocket part
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_part run function expansion:blocks/launch_pad/interaction/place_rocket_engines

# when holding anything else
execute unless predicate expansion:nbt_checks/selected_item/vehicles/cargo_rocket unless predicate expansion:nbt_checks/selected_item/vehicles/rocket unless predicate expansion:nbt_checks/selected_item/blocks/rocket_part run function expansion:utilities/error_messages/launch_pad_tip

tag @s remove exp.clicked