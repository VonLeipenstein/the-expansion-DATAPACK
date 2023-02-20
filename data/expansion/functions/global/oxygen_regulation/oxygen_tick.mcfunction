scoreboard players remove @s[scores={exp.oxygen_level=1..},predicate=expansion:nbt_checks/armor/space_equipment/equipment] exp.oxygen_level 1

execute if score @s exp.oxygen_level matches 1.. run function expansion:global/oxygen_regulation/oxygen_percentage

title @s[scores={exp.oxygen_percent=50..},predicate=expansion:nbt_checks/armor/space_equipment/equipment] actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"green"},{"text":"%\u25b6","color":"green"}]
title @s[scores={exp.oxygen_percent=10..50},predicate=expansion:nbt_checks/armor/space_equipment/equipment] actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"gold"},{"text":"%\u25b6","color":"gold"}]
title @s[scores={exp.oxygen_percent=..10},predicate=expansion:nbt_checks/armor/space_equipment/equipment] actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.oxygen_percent"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"}]

execute unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:global/oxygen_regulation/suffocate
execute unless score @s exp.oxygen_level matches 1.. run function expansion:global/oxygen_regulation/suffocate

