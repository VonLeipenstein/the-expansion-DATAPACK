# global rightclick actions
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:global/global_rightclick/rightclick_main

# guide 1
execute if score @s give_guide1 matches 1 run function expansion:items/expansion_guides/guide1/spawn_guide1

# custom durability, Credits to Cloudwolf (https://www.youtube.com/watch?v=XoTR_kFAlkc)
execute unless entity @s[scores={exp.use_sword=0,exp.use_pickaxe=0,exp.use_axe=0,exp.use_shovel=0,exp.use_hoe=0}] run function expansion:utilities/custom_durability/add_scores
execute if score @s exp.use_tool matches 1.. run function expansion:utilities/custom_durability/material_check

# oxygen regulation
execute if entity @s[tag=exp.has_oxygen] unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=..20,limit=1,sort=nearest] run function expansion:global/oxygen_regulation/remove_oxygen_tag
execute if predicate expansion:dimension/oxygen_absent if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:global/oxygen_regulation/oxygen_tick

# temperature, gravity & planet events
execute if predicate expansion:dimension/exp_dimensions run function expansion:global/global_planets

# run the vehicle functions if the player is inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run function expansion:global/global_vehicles/vehicles_tick

# equipment modules
execute if predicate expansion:nbt_checks/armor/space_equipment/has_module run function expansion:items/space_equipment/modules/modules_tick

# rocket boots
execute if predicate expansion:nbt_checks/armor/rocket_boots unless predicate expansion:dimension/zero_gravity run function expansion:items/rocket_boots/main

# pet drone
execute if entity @s[tag=exp.has_active_drone] as @e[type=minecraft:armor_stand,tag=exp.pet_drone,limit=1,sort=nearest] run function expansion:items/drone_pet/movement/main

# death fix for vehicles
execute if score @s exp.death matches 1.. run function expansion:global/player_death

# cooldown utility
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
execute if score @s exp.warmup matches 1.. run function expansion:global/global_warmup/warmup_loop

# reset all the detection scoreboards
scoreboard players set @s[scores={exp.jump=1..}] exp.jump 0
scoreboard players set @s[scores={exp.rightclick=1..}] exp.rightclick 0

# delete gui items
clear @s minecraft:jigsaw{gui_item:1b}
