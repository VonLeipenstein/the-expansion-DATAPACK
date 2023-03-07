# alternate between firing left and right blasters for the gatling effect
execute if score @s exp.hold_count matches 1 summon minecraft:marker run function expansion:vehicles/spaceship/blasters/gatling/summon_left_blast
execute if score @s exp.hold_count matches 0 summon minecraft:marker run function expansion:vehicles/spaceship/blasters/gatling/summon_right_blast

playsound expansion:spaceship.blaster player @a ~ ~ ~ 0.5 1 0.01

# regulate toggling
scoreboard players add @s exp.hold_count 1
scoreboard players set @s[scores={exp.hold_count=2}] exp.hold_count 0

scoreboard players set @s exp.counter_2 1