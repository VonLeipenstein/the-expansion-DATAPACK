# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/landing
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/return_capsule/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# particles
execute at @s anchored eyes run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0 10 force
execute at @s anchored eyes run particle minecraft:flame ~ ~ ~ .7 .7 .7 0.1 50 force
execute at @s anchored eyes run particle minecraft:large_smoke ~ ~ ~ .7 .7 .7 0.1 50 force

# run the touchdown when landing on the ground
execute if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/return_capsule/touchdown

execute on passengers run effect give @s minecraft:resistance 1 5 true