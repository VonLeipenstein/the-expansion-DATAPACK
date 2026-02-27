execute as @p unless predicate expansion:holding/items/wrench run return run function expansion:utilities/error_messages/no_dismantle_wrench
execute as @p unless predicate expansion:utility/sneak run return run function expansion:utilities/error_messages/no_dismantle_sneak

execute unless entity @s[tag=exp.prompted_dismantle] run tellraw @p {translate:"exp_vehicles_spaceship_dismantle"}
execute unless entity @s[tag=exp.prompted_dismantle] run return run tag @s add exp.prompted_dismantle

# save upgrades
data remove storage expansion:temp save_upgrade
execute if data entity @s data.ModStorage.speed_mod.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.speed_mod
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade
execute if data entity @s data.ModStorage.oxygen_tank.id run data modify storage expansion:temp save_upgrade set from entity @s data.ModStorage.oxygen_tank
execute if data storage expansion:temp save_upgrade run function expansion:utilities/save_upgrade

# destroy the spaceship
execute at @s run function expansion:vehicles/buggy/demount

execute at @s run playsound expansion:wrench.create block @a ~ ~ ~

# spawn the parts
execute at @s run loot spawn ~ ~ ~ loot expansion:vehicles/buggy_dismantle