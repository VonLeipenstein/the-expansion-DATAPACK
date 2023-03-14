tp @r[tag=exp.generator] @e[type=minecraft:armor_stand,tag=exp.player_spawn,limit=1,sort=nearest]
execute at @e[type=minecraft:armor_stand,tag=exp.player_spawn,limit=1] run forceload remove ~ ~
execute if score #earth exp.gen_success matches 1 if score #moon exp.gen_success matches 1 if score #mars exp.gen_success matches 1 if score #venus exp.gen_success matches 1 if score #jupiter exp.gen_success matches 1 if score #europa exp.gen_success matches 1 run scoreboard players set #total_system exp.gen_success 1
schedule function expansion:system_generation/remove_generator_tag 20t
execute if entity @s[scores={exp.gamemode=0}] run gamemode survival
execute if entity @s[scores={exp.gamemode=1}] run gamemode creative
execute if entity @s[scores={exp.gamemode=2}] run gamemode spectator
execute if entity @s[scores={exp.gamemode=3}] run gamemode adventure
kill @e[type=minecraft:armor_stand,tag=exp.player_spawn]