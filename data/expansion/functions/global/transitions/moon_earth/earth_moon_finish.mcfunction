# summon a lunar module if this function hasn't been run before
execute at @s[tag=!exp.trying_transition] run summon armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Tags:["exp.lunar_module","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:item_display",Tags:["exp.module_display"],item_display:"head",Passengers:[{id:"minecraft:armor_stand",Small:1b,Silent:1b,Invulnerable:1b,Tags:["exp.module_seat","smithed.block"]}]}],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:1012004,lunar_module:1b}}]}

# apply levitation so the player doesn't fall in case of lag
effect give @s[tag=!exp.trying_transition] minecraft:levitation 1000 255 true
effect give @s[tag=!exp.trying_transition] minecraft:blindness 1000 255 true

# apply a tag so some things in this function only run once
tag @s add exp.trying_transition

# attempt to enter the lunar module
ride @s mount @e[type=armor_stand,tag=exp.module_seat,limit=1,sort=nearest]

# remove effects/tags and finish the transition
tag @s[predicate=expansion:nbt_checks/root_vehicle/lunar_module] add exp.inside_module
tag @s[tag=exp.inside_module] remove exp.trying_transition
tag @s[tag=exp.inside_module] remove exp.inside_rocket
effect clear @s[tag=exp.inside_module] levitation
effect clear @s[tag=exp.inside_module] blindness
