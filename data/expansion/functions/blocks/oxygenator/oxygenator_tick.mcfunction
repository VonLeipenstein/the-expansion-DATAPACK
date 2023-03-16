execute if entity @p[distance=..6] run function expansion:blocks/oxygenator/player_nearby

execute if entity @s[tag=exp.scanning] if entity @p[distance=..20] run function expansion:blocks/oxygenator/perform_scan

execute if score @s exp.cooldown matches 1.. run function expansion:blocks/oxygenator/gui_flash

execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/oxygenator/destroy

execute if score @s exp.counter_2 matches 1 at @e[type=minecraft:marker,tag=exp.oxygen_marker,limit=10,sort=furthest,distance=..21] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute if score @s exp.timer_2 matches 1 as @e[type=minecraft:armor_stand,tag=exp.sphere_display,distance=..0.1,limit=1,sort=nearest] at @s run function expansion:blocks/oxygenator/display_sphere


