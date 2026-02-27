execute as @p unless predicate expansion:holding/items/wrench run return run function expansion:utilities/error_messages/no_dismantle_wrench
execute as @p unless predicate expansion:utility/sneak run return run function expansion:utilities/error_messages/no_dismantle_sneak

execute unless entity @s[tag=exp.prompted_dismantle] run tellraw @p {translate:"exp_vehicles_spaceship_dismantle"}
execute unless entity @s[tag=exp.prompted_dismantle] run return run tag @s add exp.prompted_dismantle

# save upgrades
data remove storage expansion:temp save_upgrade
execute if data entity @s data.ModStorage.speed.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.speed
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade
execute if data entity @s data.ModStorage.fuel.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.fuel
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade
execute if data entity @s data.ModStorage.blaster.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.blaster
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade
execute if data entity @s data.ModStorage.skin.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.skin
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade

# destroy the spaceship
execute at @s run function expansion:vehicles/spaceship/demount

execute at @s run playsound expansion:wrench.create block @a ~ ~ ~

# spawn the parts
execute at @s run loot spawn ~ ~ ~ loot expansion:items/spaceship_cockpit
execute at @s run loot spawn ~ ~ ~ loot expansion:items/spaceship_engines
execute at @s run loot spawn ~ ~ ~ loot expansion:items/spaceship_nose
execute at @s run loot spawn ~ ~ ~ loot expansion:items/spaceship_left_wing
execute at @s run loot spawn ~ ~ ~ loot expansion:items/spaceship_right_wing