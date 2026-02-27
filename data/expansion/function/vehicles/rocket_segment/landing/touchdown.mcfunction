tag @s remove exp.landing

# mount a launch pad, if there is any
ride @s mount @e[type=minecraft:item_display,tag=exp.launch_pad,distance=..2,limit=1]

execute facing ~ ~1 ~ run function expansion:vehicles/rocket_segment/landing/land_particles