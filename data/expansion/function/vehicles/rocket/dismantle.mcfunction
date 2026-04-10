# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/dismantle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/rocket/click_detection/leftclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute as @p unless predicate expansion:holding/items/wrench run return run function expansion:utilities/error_messages/no_dismantle_wrench
execute as @p unless predicate expansion:utility/sneak run return run function expansion:utilities/error_messages/no_dismantle_sneak

execute unless entity @s[tag=exp.prompted_dismantle] run tellraw @p {translate:"exp_vehicles_rocket_dismantle"}
execute unless entity @s[tag=exp.prompted_dismantle] run return run tag @s add exp.prompted_dismantle

execute at @s run function expansion:vehicles/rocket/demount

execute at @s run playsound expansion:wrench.create block @a ~ ~ ~

execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_top
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_cockpit
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_bottom