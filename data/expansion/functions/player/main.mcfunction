# add a tag to be able to target the player who is currently running this function from any context
tag @s add exp.tick_player

# global rightclick actions
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:player/rightclick/main

# guide
execute if score @s give_guide1 matches 1 run function expansion:items/expansion_guides/guide1/spawn_guide1

# oxygen regulation
execute if entity @s[tag=exp.has_oxygen] unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=..20,limit=1,sort=nearest] run function expansion:mechanics/oxygen/remove_oxygen_tag

# run the vehicle functions if the player is inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run function expansion:vehicles/main

# temperature, oxygen, gravity & planet events
execute if predicate expansion:dimension/exp_dimensions run function expansion:solar_system/planets_main

# equipment modules
execute if predicate expansion:nbt_checks/armor/space_equipment/has_module run function expansion:items/space_equipment/modules/main

# rocket boots
execute if predicate expansion:nbt_checks/armor/rocket_boots unless predicate expansion:dimension/zero_gravity run function expansion:items/rocket_boots/main

# pet drone
scoreboard players operation #search exp.unique_id = @s exp.unique_id
execute if entity @s[tag=exp.has_active_drone] as @e[type=minecraft:armor_stand,tag=exp.pet_drone,predicate=expansion:compare_score/unique_id,limit=1,sort=nearest] run function expansion:items/drone_pet/main

# pocket space transportation
execute if entity @s[tag=exp.check_loaded] run function expansion:items/transporter/transport/check_loaded

# death fix for vehicles
execute if score @s exp.death matches 1.. run function expansion:player/death

# cooldown utility
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
execute if score @s exp.warmup matches 1.. run function expansion:utilities/warmup/main

# reset all the detection scoreboards
scoreboard players set @s[scores={exp.jump=1..}] exp.jump 0
scoreboard players set @s[scores={exp.rightclick=1..}] exp.rightclick 0

# delete gui items
clear @s minecraft:jigsaw{gui_item:1b}

# remove ticking tag
tag @s remove exp.tick_player
