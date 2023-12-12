effect give @s slow_falling 1 0 true
effect clear @s levitation
execute rotated ~ 0 positioned ~ ~1.5 ~ run particle poof ^ ^ ^-0.5 0.1 0.1 0.1 0 2
tag @s[tag=exp.rising] remove exp.rising
tag @s[tag=exp.falling] remove exp.falling
#playsound entity.cat.hiss master @s ~ ~ ~ 0.1 2 1 
tag @s add exp.spacewalking