# check ammo
execute store result score @s exp.ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo

# shoot
execute unless score @s exp.ammo matches 0 run function expansion:items/railgun/warmup

# reload
execute store result score @s exp.counter_2 run clear @s minecraft:iron_ingot 0
execute unless score @s exp.ammo matches 1.. if score @s exp.counter_2 matches 1.. run function expansion:items/railgun/reload
execute unless score @s exp.ammo matches 1.. if score @s exp.counter_2 matches 0 run playsound expansion:railgun.dry_fire player @a ~ ~ ~

# reset scoreboard
scoreboard players reset @s exp.counter_2