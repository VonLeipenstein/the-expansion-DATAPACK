effect give @s levitation 1 4 true
execute rotated ~ 0 positioned ~ ~0.5 ~ run particle cloud ^ ^ ^-0.5 0.1 0.1 0.1 0 5
tag @s[tag=exp.falling] remove exp.falling
tag @s[tag=exp.rising] remove exp.rising
#playsound entity.cat.hiss master @s ~ ~ ~ 0.1 2 1 

tag @s add exp.spacewalking
say rising