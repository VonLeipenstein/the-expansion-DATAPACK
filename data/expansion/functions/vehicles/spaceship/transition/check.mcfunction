# summon a spaceship if this function hasn't been run before
execute at @s if entity @s[tag=!exp.summoned_new_ship,tag=exp.spaceship_pilot] if loaded ~ ~ ~ summon armor_stand run function expansion:vehicles/spaceship/transition/summon_new/base

# apply levitation so the player doesn't fall in case of lag
effect give @s minecraft:levitation 1000 255 true
effect give @s minecraft:blindness 1000 255 true

# copy the item out of the spaceship storage to the players head
execute if predicate expansion:nbt_checks/root_vehicle/spaceship run function expansion:vehicles/spaceship/transition/finish
