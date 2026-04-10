# >>> generated function callers >>>
# Callers for expansion:blocks/portal/place/summon_interaction
# Total callers: 5 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/place/setup_ports (5 callers) [OK same-folder]
# <<< generated function callers <<<

tag @s add exp.portal_core.new
tag @s add exp.portal_core_rcdet
tag @s add smithed.block

rotate @s ~ ~

scoreboard players operation @s exp.unique_id = #portal_id exp.unique_id

data merge entity @s {width:0.6,height:0.6,response:1b}

execute summon snowball run function expansion:blocks/portal/place/link_origin

tag @s remove exp.portal_core.new