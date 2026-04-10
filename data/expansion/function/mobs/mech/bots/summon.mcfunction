# >>> generated function callers >>>
# Callers for expansion:mobs/mech/bots/summon
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/health/hurt (2 callers) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.mech.bot_link] run function expansion:blocks/modification_station/place/link_bots

execute if entity @s[tag=exp.mech_summoned_drones] run tag @s add exp.mech_summoned_drones_twice
tag @s add exp.mech_summoned_drones

function expansion:mobs/mech/behavior/switch_weapons/init