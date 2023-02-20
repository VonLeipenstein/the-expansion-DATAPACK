# summon a spaceship if this function hasn't been run before
execute at @s[tag=!exp.trying_transition] run summon armor_stand ^ ^ ^ {NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["exp.spaceship","exp.vehicle","smithed.block"],DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Small:0b,Marker:1b,Invisible:1b,Tags:["exp.spaceship_display"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:1012002,lunar_module:1b}}],Pose:{Head:[0f,1f,0f]}}]}
# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# apply a tag so some things in this function only run once
tag @s add exp.trying_transition

# attempt to enter the spaceship
execute rotated as @s run tp @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] ^ ^ ^ ~ ~
# sometimes the transition fails and dismounts the display armor stand from the spaceship AS
ride @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
ride @s mount @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest]

# remove effects/tags and finish the transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] remove exp.trying_transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] remove exp.transitioning
effect clear @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] levitation
effect clear @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] blindness
scoreboard players operation @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.speed = @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] exp.speed
scoreboard players operation @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.spaceship_cmd = @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] exp.spaceship_cmd