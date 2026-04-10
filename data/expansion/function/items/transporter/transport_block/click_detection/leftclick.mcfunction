# >>> generated function callers >>>
# Callers for expansion:items/transporter/transport_block/click_detection/leftclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/transporter_lc (1 caller)
# <<< generated function callers <<<

execute as @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={attack:{}},distance=..10] on vehicle run function expansion:blocks/transporter/pick_up
data remove entity @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={attack:{}},distance=..10] attack
advancement revoke @s only expansion:utility/transporter_lc