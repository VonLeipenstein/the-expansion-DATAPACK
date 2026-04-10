# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/hurt
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/health/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# if the health gets below 0, initiate the death sequence
execute unless score @s exp.health matches 1.. run return run function expansion:mobs/mech/health/die/init

# find some health thresholds
scoreboard players reset #3/4 exp.health
scoreboard players reset #1/2 exp.health
scoreboard players reset #1/4 exp.health
execute store result score #1/2 exp.health run attribute @s max_health get
scoreboard players operation #1/2 exp.health /= #2 exp.const

scoreboard players operation #1/4 exp.health = #1/2 exp.health
scoreboard players operation #1/4 exp.health /= #2 exp.const

scoreboard players operation #3/4 exp.health = #1/2 exp.health
scoreboard players operation #3/4 exp.health += #1/4 exp.health

# at 1/4 of the health, summon drones, heal and switch gear
execute if score @s exp.health < #1/4 exp.health unless entity @s[tag=exp.mech_summoned_drones_twice] unless entity @s[tag=exp.mech_switched3] run return run function expansion:mobs/mech/bots/summon

# at 1/2 of the health, heal and switch gear
execute if score @s exp.health < #1/2 exp.health unless entity @s[tag=exp.mech_switched2] run return run function expansion:mobs/mech/behavior/switch_weapons/init

# at 3/4 of health, summon the drones and switch gear
execute if score @s exp.health < #3/4 exp.health unless entity @s[tag=exp.mech_summoned_drones] unless entity @s[tag=exp.mech_switched1] run return run function expansion:mobs/mech/bots/summon