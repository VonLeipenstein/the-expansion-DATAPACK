execute as @p unless predicate expansion:nbt_checks/selected_item/items/wrench run return run tellraw @s ["",{translate:"exp_vehicles_dismantle_tip1"},{translate:"exp_guide_item_display",color:"white",font:"expansion:default",with:[{text:"\uff38","hover_event":{"action":"show_text","value":[{translate:"exp_tools_wrench_name"},{translate:"exp_guide1_wrench_tip"},{translate:"exp_guide_item_hover",color:"white",font:"expansion:default",with:[{text:"\uff81"}]},{translate:"exp_guide_craftedin"},{translate:"exp_guide_item_display",color:"white",font:"expansion:default",with:[{text:"\uff21"}]}]}}]}]
execute as @p unless predicate expansion:utility/sneak run return run tellraw @s ["",{translate:"exp_vehicles_dismantle_tip2"}]

execute unless entity @s[tag=exp.prompted_dismantle] run tellraw @p {translate:"exp_vehicles_rocket_dismantle"}
execute unless entity @s[tag=exp.prompted_dismantle] run return run tag @s add exp.prompted_dismantle

execute at @s run function expansion:vehicles/rocket/demount

execute at @s run playsound expansion:wrench.create block @a ~ ~ ~

execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_top
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_cockpit
execute at @s run loot spawn ~ ~ ~ loot expansion:items/rocket_bottom