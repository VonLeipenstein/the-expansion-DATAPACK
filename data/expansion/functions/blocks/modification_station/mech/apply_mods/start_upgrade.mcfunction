function expansion:blocks/modification_station/mod_robots/summon

execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{hand_mod:1b}}]} if data entity @s ArmorItems[3].tag.ModStorage.lefthand.id run item replace block ~ ~ ~ container.9 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{hand_mod:1b}}]} if data entity @s ArmorItems[3].tag.ModStorage.righthand.id run item replace block ~ ~ ~ container.14 with minecraft:air

scoreboard players set @s exp.counter_1 0
scoreboard players reset @s exp.bool
scoreboard players set @s exp.timer_1 20