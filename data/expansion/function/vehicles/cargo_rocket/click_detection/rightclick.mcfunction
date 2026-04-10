# >>> generated function callers >>>
# Callers for expansion:vehicles/cargo_rocket/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/cargo_rocket_rc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/cargo_rocket_rc

tag @s add exp.clicked

# link a rocket remote to this cargo rocket
execute if predicate expansion:holding/items/cargo_rocket_remote \
        as @n[type=minecraft:interaction,tag=exp.cargo_rocket_rcdet,nbt={interaction:{}},distance=..10] \
        if function expansion:utilities/remove_interaction \
        on vehicle \
        run function expansion:items/cargo_rocket_remote/link
        
tag @s remove exp.clicked