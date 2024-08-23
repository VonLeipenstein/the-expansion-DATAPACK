execute on vehicle on vehicle if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/lunar_module/touchdown

execute on vehicle on vehicle run effect give @s slow_falling 1 1 true

ride @s mount @e[type=minecraft:camel,tag=exp.module_seats,limit=1,sort=nearest]
