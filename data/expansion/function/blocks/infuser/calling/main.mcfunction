scoreboard players remove @s[scores={exp.timer_1=80..}] exp.timer_1 1

execute at @s if score @s exp.timer_1 matches 140 facing ~ ~1 ~ summon marker run function expansion:projectiles/beam/cast

execute if score @s exp.timer_1 matches ..100 run particle minecraft:dust_color_transition{from_color:65522,to_color:16726261,scale:1} ^ ^ ^ 0 0 0 0 1 force

execute at @s if score @s exp.timer_1 matches 80 run playsound minecraft:block.bell.resonate block @a ~ ~ ~ 5 0

execute if score @s exp.timer_1 matches ..80 if predicate expansion:chance/001_chance summon marker run function expansion:blocks/infuser/calling/call

execute if entity @e[type=snowball,tag=exp.slowcast,tag=exp.electric_arc,distance=..1,limit=1] run function expansion:blocks/infuser/charged/init