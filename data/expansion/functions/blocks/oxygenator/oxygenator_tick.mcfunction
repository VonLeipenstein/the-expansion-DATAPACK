execute if entity @p[distance=..5.5] run function expansion:blocks/oxygenator/interaction

execute if entity @s[tag=exp.scanning] if entity @p[distance=..20] run function expansion:blocks/oxygenator/perform_scan

execute if score @s exp.cooldown matches 1.. run function expansion:blocks/oxygenator/gui_flash

execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/oxygenator/destroy

execute if score @s exp.counter_2 matches 1 at @e[type=marker,tag=exp.oxygen_marker,limit=10,sort=random] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0 1 force

execute if score @s exp.timer_1 matches 1 as @e[type=armor_stand,tag=exp.sphere_display,limit=1,sort=nearest] at @s run function expansion:blocks/oxygenator/display_sphere


