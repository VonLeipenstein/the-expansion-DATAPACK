function expansion:blocks/modification_station/mod_robots/summon

execute if block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{fuel_mod:1b}}]} run item replace block ~ ~ ~ container.0 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{blaster_mod:1b}}]} run item replace block ~ ~ ~ container.9 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{speed_mod:1b}}]} run item replace block ~ ~ ~ container.18 with minecraft:air
execute if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b}}]} run item replace block ~ ~ ~ container.5 with minecraft:air

scoreboard players set @s exp.counter_1 0
scoreboard players reset @s exp.bool
scoreboard players set @s exp.timer_1 200