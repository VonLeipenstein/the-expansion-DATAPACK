# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/landing/touchdown
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/landing/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.landing

#execute if score @s exp.dy matches ..-20 run function expansion:vehicles/rocket_segment/landing/crash

# mount a launch pad, if there is any
ride @s mount @e[type=minecraft:interaction,tag=exp.launch_pad_hitbox,distance=..2,limit=1]

execute facing ~ ~1 ~ run function expansion:vehicles/rocket_segment/landing/land_particles