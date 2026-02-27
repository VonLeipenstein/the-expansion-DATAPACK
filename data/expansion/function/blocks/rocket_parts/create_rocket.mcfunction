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
