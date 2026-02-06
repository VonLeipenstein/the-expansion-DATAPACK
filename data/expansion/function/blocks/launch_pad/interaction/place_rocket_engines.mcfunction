execute unless predicate expansion:nbt_checks/selected_item/blocks/rocket_bottom run return run function expansion:utilities/error_messages/launch_pad_engines_tip

# now we know the player is holding the engines, place the engines on the launch pad
execute as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={interaction:{}},distance=..10] if function expansion:utilities/remove_interaction on vehicle at @s run function expansion:blocks/rocket_parts/engines/place
