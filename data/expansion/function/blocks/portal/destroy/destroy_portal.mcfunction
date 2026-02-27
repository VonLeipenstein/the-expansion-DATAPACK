scoreboard players operation #search exp.unique_id = @s exp.unique_id

function expansion:blocks/portal/deactivation/search_match_id

execute on passengers if predicate expansion:contents/portal_core at @s[tag=exp.core_port] run function expansion:blocks/portal/destroy/retrieve_cores

loot give @p loot expansion:blocks/portal

execute at @s run fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:air replace minecraft:barrier

execute as @e[type=minecraft:interaction,tag=exp.portal_core_rcdet,predicate=expansion:compare_score/unique_id,limit=5,distance=..10] run function expansion:blocks/portal/destroy/remove_port

execute on passengers run kill @s

kill @s