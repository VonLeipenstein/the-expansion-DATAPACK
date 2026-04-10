# >>> generated function callers >>>
# Callers for expansion:mobs/mech/bots/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/on_mech (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute if score @s exp.counter_2 matches 1.. run return run function expansion:mobs/mech/bots/switching

# drones idle above the mech
execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_above