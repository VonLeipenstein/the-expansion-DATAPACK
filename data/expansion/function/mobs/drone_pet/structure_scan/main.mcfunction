execute unless score @s exp.timer_1 matches 1.. run function expansion:mobs/drone_pet/structure_scan/initiate

function expansion:utilities/timers/5_sec_timer

execute if entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/determine_direction

execute unless entity @s[tag=exp.located_structure] run function expansion:mobs/drone_pet/structure_scan/not_found
