execute unless predicate expansion:holding/blocks/rocket_bottom run return run function expansion:utilities/error_messages/launch_pad_engines_tip

# now we know the player is holding the engines, place the engines on the launch pad
execute as @n[type=minecraft:interaction,tag=exp.launch_pad_hitbox,nbt={interaction:{}},distance=..10] \
        if function expansion:utilities/remove_interaction \
        on vehicle \
        unless function expansion:blocks/launch_pad/occupied \
        at @s \
        run function expansion:blocks/rocket_parts/engines/place
