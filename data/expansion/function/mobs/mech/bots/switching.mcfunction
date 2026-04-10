# >>> generated function callers >>>
# Callers for expansion:mobs/mech/bots/switching
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/bots/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# stop movement if the bots are doing their work
scoreboard players set @s exp.warmup 0

# bots swarm around the mech during the upgrade
execute at @s on passengers if entity @s[tag=exp.mech.bot_link] on origin run function expansion:mobs/mech/bots/hover_around

# equip random weapons when the timer runs out
execute if score @s exp.counter_2 matches 1 run function expansion:mobs/mech/behavior/switch_weapons/get_random_loadout

# reduce cooldown
scoreboard players remove @s exp.counter_2 1