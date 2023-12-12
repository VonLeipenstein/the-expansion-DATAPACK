data merge entity @s {Silent:1b,NoGravity:0b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["exp.spaceship_display"],item_display:"head"},{id:"minecraft:interaction",Tags:["exp.spaceship_rcdet"],width:2f,height:2f,response:0b}]}
tag @s add exp.spaceship
tag @s add exp.vehicle
tag @s add smithed.block
tag @s add exp.new_ship

execute summon armor_stand run function expansion:vehicles/spaceship/transition/summon_new/armor_stand
execute summon interaction run function expansion:vehicles/spaceship/transition/summon_new/hitbox
execute summon item_display run function expansion:vehicles/spaceship/transition/summon_new/display

# attempt to enter the spaceship
execute on passengers if entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] run ride @p[tag=exp.transitioning,tag=exp.spaceship_pilot] mount @s
execute on passengers if entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] run ride @p[tag=exp.transitioning,tag=!exp.spaceship_pilot] mount @s

tag @p[tag=exp.transitioning] add exp.summoned_new_ship