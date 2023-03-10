# summon a spaceship if this function hasn't been run before
execute at @s[tag=!exp.trying_transition] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Small:0b,Marker:1b,Invisible:1b,Tags:["exp.spaceship_display"],Pose:{Head:[0f,1f,0f]}}]}
# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# apply a tag so some things in this function only run once
tag @s add exp.trying_transition

# attempt to enter the spaceship
ride @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] mount @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
ride @s mount @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# copy the item out of the spaceship storage to the players head
execute if predicate expansion:nbt_checks/root_vehicle/spaceship on vehicle run data modify entity @s ArmorItems[3] set from entity @p Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[]
clear @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] minecraft:stick{spaceship_backup_stick:1b}

# remove effects/tags and finish the transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] remove exp.trying_transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] remove exp.transitioning
effect clear @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] levitation
effect clear @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] blindness

execute at @s if predicate expansion:nbt_checks/root_vehicle/spaceship on vehicle on vehicle run function expansion:vehicles/spaceship/transition/merge_scores