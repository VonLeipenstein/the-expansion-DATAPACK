advancement revoke @s only expansion:utility/cargo_rocket_lc

tag @s add exp.clicked

# can only destroy rocket if it is mounted to a launch pad
execute as @n[type=minecraft:interaction,tag=exp.cargo_rocket_rcdet,nbt={attack:{}},distance=..10] \
        if function expansion:utilities/remove_attack \
        on vehicle \
        if predicate expansion:riding/launch_pad \
        run function expansion:vehicles/cargo_rocket/destroy

tag @s remove exp.clicked