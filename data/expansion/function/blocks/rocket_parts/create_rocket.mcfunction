# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/create_rocket
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/launch_pad/transform/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# summon a new rocket
function expansion:vehicles/rocket/summon/init

# ride the launch pad
ride @e[type=minecraft:armor_stand,tag=exp.rocket,distance=..0.01,limit=1] mount @s

# sound
playsound expansion:wrench.create block @a[distance=..16] ~ ~ ~

# advancement
advancement grant @p only expansion:progression/get_rocket

# kill all the rocket parts
execute on passengers if entity @s[tag=exp.rocket_part] at @s run function expansion:blocks/rocket_parts/destroy
