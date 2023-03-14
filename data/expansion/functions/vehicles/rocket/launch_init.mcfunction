# check for an obsidian launchpad
execute if block ~ ~-1 ~ minecraft:obsidian if block ~1 ~-1 ~ minecraft:obsidian if block ~-1 ~-1 ~ minecraft:obsidian if block ~ ~-1 ~1 minecraft:obsidian if block ~ ~-1 ~-1 minecraft:obsidian if block ~1 ~-1 ~1 minecraft:obsidian if block ~-1 ~-1 ~-1 minecraft:obsidian if block ~-1 ~-1 ~1 minecraft:obsidian if block ~1 ~-1 ~-1 minecraft:obsidian run tag @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] add exp.launchpad_good

# start launch or check for errors if the launch failed
execute if predicate expansion:nbt_checks/armor/space_equipment/equipment as @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] if score @s[tag=exp.launchpad_good] exp.fuel_level = @s exp.fuel_max run scoreboard players set @s exp.timer_2 230
execute as @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] unless score @s exp.timer_2 matches 1.. run function expansion:vehicles/rocket/launch_errors
tag @s remove exp.launchpad_good
