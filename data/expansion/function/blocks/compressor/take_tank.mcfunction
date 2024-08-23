item replace entity @p weapon.mainhand from entity @s container.0

item replace entity @s container.0 with minecraft:air

tag @s add exp.took_tank

scoreboard players set @n[type=minecraft:armor_stand,tag=exp.compressor] exp.timer_1 0

tag @n[type=minecraft:armor_stand,tag=exp.compressor] remove exp.tank_inside

execute as @n[type=minecraft:armor_stand,tag=exp.compressor] run function expansion:blocks/compressor/compress/stop