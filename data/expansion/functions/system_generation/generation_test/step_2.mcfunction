# earth: 0,0
# moon: -1243, 126
# mars: -3764, -2668
# venus: 2717, 3482
# mercury: 4895, -3210
# asteroids: 7932, ~
# jupiter: -2873, 1536 
# europa: -3557, 1635

execute positioned 0 512 0 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.earth] run scoreboard players set #earth exp.gen_success 1
execute positioned -621 512 126 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.moon] run scoreboard players set #moon exp.gen_success 1
execute positioned -1882 512 -1334 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.mars] run scoreboard players set #mars exp.gen_success 1
execute positioned 1358 512 1741 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.venus] run scoreboard players set #venus exp.gen_success 1
#execute positioned 2448 512 -1605 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.mercury] run scoreboard players set #mercury exp.gen_success 1
execute positioned -2873 512 1536 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.jupiter] run scoreboard players set #jupiter exp.gen_success 1
execute positioned -3557 512 1635 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=exp.europa] run scoreboard players set #europa exp.gen_success 1
