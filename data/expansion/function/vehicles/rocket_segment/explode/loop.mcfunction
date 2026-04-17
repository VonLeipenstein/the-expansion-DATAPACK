execute on passengers if entity @s[type=minecraft:interaction] on passengers if entity @s[tag=exp.rocket_segment] run function expansion:vehicles/rocket_segment/explode/loop

# dismount and apply motion
ride @s dismount
tag @s add exp.slowcast
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0.1 1
execute at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 10
execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 10
function expansion:vehicles/rocket_segment/explode/apply_random_motion