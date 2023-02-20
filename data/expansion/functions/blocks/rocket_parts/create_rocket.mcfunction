function expansion:vehicles/rocket/summon_rocket

fill ~ ~ ~ ~ ~6 ~ minecraft:air replace minecraft:barrier

particle minecraft:cloud ~ ~3 ~ 0.5 2.5 0.5 0.01 100
particle minecraft:wax_off ~ ~3 ~ 0.5 3 0.5 0.05 500

playsound expansion:wrench.create block @a ~ ~ ~

kill @e[type=armor_stand,tag=exp.rocket_bottom,distance=..1,limit=1,sort=nearest]
execute positioned ~ ~2 ~ run kill @e[type=armor_stand,tag=exp.rocket_cockpit,distance=..1,limit=1,sort=nearest]
kill @s