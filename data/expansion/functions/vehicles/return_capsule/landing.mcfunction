# particles
execute on vehicle at @s anchored eyes run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0 10 force
execute on vehicle at @s anchored eyes run particle minecraft:flame ~ ~ ~ .7 .7 .7 0.1 50 force
execute on vehicle at @s anchored eyes run particle minecraft:large_smoke ~ ~ ~ .7 .7 .7 0.1 50 force

# run the touchdown when landing on the ground
execute on vehicle if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/return_capsule/touchdown



