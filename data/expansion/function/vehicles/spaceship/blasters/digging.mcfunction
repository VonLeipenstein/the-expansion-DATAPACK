# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/blasters/digging
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/blasters/choose (1 caller) [OK same-folder]
# <<< generated function callers <<<

# set digging blast parameters
scoreboard players set #temp exp.unique_id 1
scoreboard players set #temp exp.speed 20
scoreboard players set #temp exp.max_range 20

# fire on both sides simultaneously
execute positioned ^2.8 ^1 ^2 rotated ~8 ~ summon minecraft:marker run function expansion:projectiles/ship_blaster/cast
execute positioned ^-2.8 ^1 ^2 rotated ~-8 ~ summon minecraft:marker run function expansion:projectiles/ship_blaster/cast

# cooldown
scoreboard players set @s exp.counter_2 1
scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.speed
scoreboard players reset #temp exp.unique_id