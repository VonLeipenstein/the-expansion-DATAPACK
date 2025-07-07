# set regular blast parameters
scoreboard players set #temp exp.unique_id 0
scoreboard players set #temp exp.speed 5
scoreboard players set #temp exp.max_range 100

# fire on both sides simultaneously
execute positioned ^2.8 ^1 ^2 rotated ~1 ~-.5 summon minecraft:marker run function expansion:projectiles/ship_blaster/cast
execute positioned ^-2.8 ^1 ^2 rotated ~-1 ~-.5 summon minecraft:marker run function expansion:projectiles/ship_blaster/cast

# sound
playsound expansion:spaceship.blaster player @a ~ ~ ~ 0.5 1 0.01

# cooldown
scoreboard players set @s exp.counter_2 20
scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.speed
scoreboard players reset #temp exp.unique_id