# >>> generated function callers >>>
# Callers for expansion:items/drone_pet/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# dont summon a new drone if one was already active
execute if entity @s[tag=exp.has_active_drone] run return run function expansion:utilities/error_messages/drone_alreadyactive

# summon the drone pet
function expansion:mobs/drone_pet/summon/summon

# remove the item from the player
item replace entity @s weapon.mainhand with minecraft:air

# tag that the player has a drone
tag @s add exp.has_active_drone