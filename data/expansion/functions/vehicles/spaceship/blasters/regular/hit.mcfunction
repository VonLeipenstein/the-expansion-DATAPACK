particle dust 0.000 0.969 1.000 2 ~ ~ ~ 0.5 0.5 0.5 5 50 force
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;260095]}]}}}}
execute as @e[type=#expansion:sentient,distance=..3] run damage @s 4 expansion:spaceship_blaster
kill @s