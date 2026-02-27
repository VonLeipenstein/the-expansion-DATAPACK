tag @s remove exp.rocket_part.new

execute positioned ~ ~-2.5 ~ run ride @s mount @n[type=minecraft:interaction,tag=exp.rocketpart_rcdet,distance=..0.01]

data merge entity @s {transformation:{scale:[2.5,2.5,2.5],translation:[0,1.125,0]}}

execute at @s facing ~ ~-1 ~ run function expansion:blocks/rocket_parts/place_particles

# remove one from the held item count
execute as @p[tag=exp.clicked] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
execute as @p[tag=exp.clicked] run playsound minecraft:block.metal.place block @s
