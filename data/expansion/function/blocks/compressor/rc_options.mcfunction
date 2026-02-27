advancement revoke @s only expansion:utility/compressor_rc
advancement revoke @s only expansion:utility/compressor_lc

tag @s add exp.clicked

execute as @n[type=minecraft:interaction,tag=exp.compressor.rcdet,nbt={interaction:{}},distance=..10] \
        if function expansion:utilities/remove_interaction \
        on vehicle \
        run function expansion:blocks/compressor/tank_swap

execute as @n[type=minecraft:interaction,tag=exp.compressor.rcdet,nbt={attack:{}},distance=..10] \
        if function expansion:utilities/remove_attack \
        on vehicle \
        run function expansion:blocks/compressor/tank_swap

tag @s remove exp.clicked
