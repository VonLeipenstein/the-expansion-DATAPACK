# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/rc_options
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/compressor_lc (1 caller)
# - advancement expansion:utility/compressor_rc (1 caller)
# <<< generated function callers <<<

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
