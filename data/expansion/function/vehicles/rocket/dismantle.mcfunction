execute as @p unless predicate expansion:nbt_checks/selected_item/items/wrench run return run function expansion:utilities/error_messages/no_dismantle_wrench
execute as @p unless predicate expansion:utility/sneak run return run function expansion:utilities/error_messages/no_dismantle_sneak

execute unless entity @s[tag=exp.prompted_dismantle] run tellraw @p {translate:"exp_vehicles_rocket_dismantle"}
execute unless entity @s[tag=exp.prompted_dismantle] run return run tag @s add exp.prompted_dismantle

execute at @s run function expansion:vehicles/rocket/demount

execute at @s run playsound expansion:wrench.create block @a ~ ~ ~

execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_top
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_cockpit
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_bottom