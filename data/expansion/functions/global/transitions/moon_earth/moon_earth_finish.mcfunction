# summon a lunar module if this function hasn't been run before
execute at @s[tag=!exp.trying_transition] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Tags:["exp.return_capsule","exp.vehicle","smithed.block"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:1012007,return_capsule:1b}}]}

# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true

# apply a tag so some things in this function only run once
tag @s add exp.trying_transition

# attempt to enter the lunar module
ride @s mount @e[type=minecraft:armor_stand,tag=exp.return_capsule,limit=1,sort=nearest]

# remove effects/tags and finish the transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/return_capsule] add exp.inside_capsule
tag @s[tag=exp.inside_capsule] remove exp.trying_transition
tag @s[tag=exp.inside_capsule] remove exp.inside_module
effect clear @s[tag=exp.inside_capsule] levitation