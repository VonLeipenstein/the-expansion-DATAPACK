tag @a[tag=exp.generator] remove exp.generator
tag @r add exp.generator
execute as @a[tag=exp.generator] at @s run forceload add ~ ~
execute as @a[tag=exp.generator] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.player_spawn"],NoGravity:1b,Invisible:1b,Marker:1b}

tellraw @a ["",{"text":"Solar System is absent or incomplete, starting system generation in 20 seconds. Please do not interrupt this process."}]

scoreboard players set @a[tag=exp.generator,gamemode=survival] exp.gamemode 0
scoreboard players set @a[tag=exp.generator,gamemode=creative] exp.gamemode 1
scoreboard players set @a[tag=exp.generator,gamemode=spectator] exp.gamemode 2
scoreboard players set @a[tag=exp.generator,gamemode=adventure] exp.gamemode 3
execute as @a[tag=exp.generator] run gamemode spectator

scoreboard players reset #earth exp.timer_2
scoreboard players reset #moon exp.timer_2
scoreboard players reset #mars exp.timer_2
scoreboard players reset #venus exp.timer_2
#scoreboard players reset #mercury exp.timer_2
scoreboard players reset #jupiter exp.timer_2
scoreboard players reset #europa exp.timer_2

scoreboard players reset #earth exp.delay
scoreboard players reset #moon exp.delay
scoreboard players reset #mars exp.delay
scoreboard players reset #venus exp.delay
#scoreboard players reset #mercury exp.delay
scoreboard players reset #jupiter exp.delay
scoreboard players reset #europa exp.delay

scoreboard players reset #finish_generation exp.delay

scoreboard players set #earth exp.delay 400