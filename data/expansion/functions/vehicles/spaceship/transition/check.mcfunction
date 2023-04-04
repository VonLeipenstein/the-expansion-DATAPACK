# summon a spaceship if this function hasn't been run before
execute at @s[tag=!exp.trying_transition] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Small:0b,Marker:1b,Invisible:1b,Tags:["exp.spaceship_display"],Pose:{Head:[0f,1f,0f]}}]}
# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# attempt to enter the spaceship
ride @s mount @e[type=minecraft:armor_stand,tag=exp.spaceship_display,distance=..100,limit=1,sort=nearest]

# copy the item out of the spaceship storage to the players head
execute if predicate expansion:nbt_checks/root_vehicle/spaceship run function expansion:vehicles/spaceship/transition/finish
