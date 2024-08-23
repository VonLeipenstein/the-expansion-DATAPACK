function expansion:blocks/modification_station/mod_robots/summon

execute if entity @s[tag=exp.modding_ship] run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/start_upgrade
execute if entity @s[tag=exp.modding_mech] run function expansion:blocks/modification_station/upgrade/mech/apply_mods/start_upgrade
execute if entity @s[tag=exp.modding_buggy] run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/start_upgrade

scoreboard players set @s exp.counter_1 0
scoreboard players reset @s exp.bool
scoreboard players set @s exp.timer_1 200