# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/engines/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/rocket_parts/engines/place (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.rocket_part.new

ride @s mount @n[type=minecraft:item_display,tag=exp.launch_pad,distance=..0.01]

data merge entity @s {transformation:{scale:[2.5,2.5,2.5],translation:[0,1.25,0]}}

execute at @s facing ~ ~-1 ~ run function expansion:blocks/rocket_parts/place_particles

# remove one from the held item count
execute as @p[tag=exp.clicked] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
execute as @p[tag=exp.clicked] run playsound minecraft:block.metal.place block @s
