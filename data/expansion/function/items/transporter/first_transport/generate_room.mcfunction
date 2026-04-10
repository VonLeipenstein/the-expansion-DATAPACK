# >>> generated function callers >>>
# Callers for expansion:items/transporter/first_transport/generate_room
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:items/transporter/transport/finish (1 caller) [WARN side/down 2]
# - function expansion:utilities/warmup/main (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# create the room
fill ~-11 ~-1 ~-11 ~11 ~21 ~11 minecraft:barrier hollow

# summon an armor stand for the return portal
execute summon minecraft:armor_stand run function expansion:items/transporter/transport/return_beacon