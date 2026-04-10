# >>> generated function callers >>>
# Callers for expansion:items/transporter/transport_block/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/transporter_rc (1 caller)
# <<< generated function callers <<<

# add a tag to identify the currently transporting player
tag @s add exp.transporting

# initiate the transport
execute unless predicate expansion:holding/items/pocket_space unless predicate expansion:utility/sneak at @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={interaction:{}}] as @n[type=minecraft:item_display,tag=exp.transporter] at @s run function expansion:items/transporter/initiate_transport

# link an unassigned pocket space to this pocket space
execute if predicate expansion:holding/items/pocket_space at @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={interaction:{}}] as @n[type=minecraft:item_display,tag=exp.transporter] run function expansion:items/transporter/link/init

# reset the interaction entity
data remove entity @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={interaction:{}}] interaction

# revoke advancement
advancement revoke @s only expansion:utility/transporter_rc

# remove tag
tag @s remove exp.transporting