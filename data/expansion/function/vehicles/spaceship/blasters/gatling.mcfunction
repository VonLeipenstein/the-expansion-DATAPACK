# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/blasters/gatling
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/blasters/choose (1 caller) [OK same-folder]
# <<< generated function callers <<<

# set gatling blast parameters
scoreboard players set #temp exp.unique_id 2
scoreboard players set #temp exp.speed 7
scoreboard players set #temp exp.max_range 100

# alternate between firing left and right blasters for the gatling effect
execute if score @s exp.hold_count matches 1 positioned ^2.8 ^1 ^2 rotated ~1 ~-.5 summon minecraft:marker run function expansion:projectiles/ship_blaster/cast
execute if score @s exp.hold_count matches 0 positioned ^-2.8 ^1 ^2 rotated ~-1 ~-.5 summon minecraft:marker run function expansion:projectiles/ship_blaster/cast

# sound
playsound expansion:spaceship.blaster player @a ~ ~ ~ 0.5 1 0.01

# regulate toggling
scoreboard players add @s exp.hold_count 1
scoreboard players set @s[scores={exp.hold_count=2}] exp.hold_count 0

# set blaster cooldown
scoreboard players set @s exp.counter_2 2
scoreboard players reset #temp exp.max_range
scoreboard players reset #temp exp.speed
scoreboard players reset #temp exp.unique_id