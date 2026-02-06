tag @s remove exp.rocket_part.new

ride @s mount @n[type=minecraft:item_display,tag=exp.launch_pad,distance=..0.01]

data merge entity @s {transformation:{scale:[2.0,2.0,2.0],translation:[0,1,0]}}

execute facing ~ ~-1 ~ positioned ~ ~0.2 ~ run function expansion:blocks/rocket_parts/place_particles