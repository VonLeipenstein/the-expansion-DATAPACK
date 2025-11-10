# summon the drone pet
function expansion:mobs/drone_pet/summon/summon

# remove the item from the player
item replace entity @s weapon.mainhand with minecraft:air

# tag that the player has a drone
tag @s add exp.has_active_drone