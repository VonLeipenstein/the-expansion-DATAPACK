# copy the item out of the spaceship storage to the players head
execute on vehicle run data modify entity @s ArmorItems[3] set from entity @p Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[]
clear @s minecraft:stick{spaceship_backup_stick:1b}

# remove effects/tags and finish the transition
tag @s remove exp.trying_transition
tag @s remove exp.transitioning
effect clear @s levitation
effect clear @s blindness

execute at @s on vehicle on vehicle run function expansion:vehicles/spaceship/transition/merge_scores