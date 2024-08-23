# add a tag to be able to target the player who is currently running this function from any context
tag @s add exp.tick_player

# unique id
execute unless score @s exp.unique_id matches 1.. run function expansion:player/assign_id
scoreboard players operation #search exp.unique_id = @s exp.unique_id

# global rightclick actions
execute if score @s exp.rightclick matches 1.. if predicate expansion:nbt_checks/selected_item/expansion_coas run function expansion:player/rightclick/main

# oxygen regulation
execute if entity @s[tag=exp.has_oxygen] unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=..20,limit=1,sort=nearest] run function expansion:mechanics/oxygen/remove_oxygen_tag

# run the vehicle functions if the player is inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run function expansion:vehicles/main

# temperature, oxygen, gravity & planet events
execute if predicate expansion:dimension/exp_dimensions run function expansion:solar_system/planets_main
# reset gravity
execute unless predicate expansion:dimension/exp_dimensions if entity @s[tag=exp.has_changed_gravity] run function expansion:mechanics/gravity/remove_all

# equipment modules
execute if predicate expansion:nbt_checks/armor/space_equipment/has_module run function expansion:items/space_equipment/modules/main
execute if entity @s[tag=exp.wearing_equipment,tag=!exp.inside_vehicle] unless predicate expansion:nbt_checks/armor/space_equipment/equipment run function expansion:items/space_equipment/unequip

# rocket boots
execute if predicate expansion:nbt_checks/armor/rocket_boots unless predicate expansion:dimension/zero_gravity run function expansion:items/rocket_boots/main

# magnetic_boots 
execute if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/main
execute unless predicate expansion:nbt_checks/armor/magnetic_boots run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects

# pocket space transportation
execute if entity @s[tag=exp.check_loaded] run function expansion:items/transporter/transport/check_loaded

# death fix for vehicles
execute if score @s exp.death matches 1.. run function expansion:player/death

# cooldown utility
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
execute if score @s exp.warmup matches 1.. run function expansion:utilities/warmup/main

# custom hitbox attack cooldown
scoreboard players remove @s[scores={exp.player_attack_cooldown=1..}] exp.player_attack_cooldown 10
scoreboard players set @s[scores={exp.player_attack_cooldown=..-1}] exp.player_attack_cooldown 0

# reset all the detection scoreboards
scoreboard players set @s[scores={exp.jump=1..}] exp.jump 0
scoreboard players set @s[scores={exp.rightclick=1..}] exp.rightclick 0

# delete gui items
clear @s minecraft:jigsaw[custom_data~{gui_item:1b}]

# remove ticking tag
tag @s remove exp.tick_player
