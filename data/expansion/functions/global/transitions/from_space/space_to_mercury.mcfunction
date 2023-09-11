execute if entity @s[tag=exp.inside_spaceship,tag=exp.spaceship_pilot] run function expansion:vehicles/spaceship/transition/start

tag @s add exp.tp_to_marker
summon minecraft:marker ~ ~ ~ {Tags:["exp.transition_marker"]}
execute as @e[type=minecraft:marker,tag=exp.transition_marker,distance=..0.1,limit=1,sort=nearest] run function expansion:vehicles/spaceship/transition/teleports/to_mercury
tag @s remove exp.tp_to_marker

function expansion:vehicles/spaceship/transition/remove_temp_tag