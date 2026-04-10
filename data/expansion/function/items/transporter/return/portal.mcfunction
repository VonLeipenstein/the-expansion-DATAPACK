# >>> generated function callers >>>
# Callers for expansion:items/transporter/return/portal
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/storage_tick (1 caller) [OK above +1]
# <<< generated function callers <<<

# aesthetics
tp @s ~ ~ ~ ~10 ~
particle minecraft:totem_of_undying ^ ^5 ^0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^ ^5 ^-0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^0.7 ^5 ^ ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^-0.7 ^5 ^ ^ ^ ^ 0 0

# return the player if they stand inside the portal
execute unless score @p[distance=..0.4,tag=!exp.tp_rev_prev] exp.cooldown matches 1.. run function expansion:items/transporter/return/check_match

# remove the tag that prevents the player from immediately returning if they move out of the portal
tag @p[distance=1..,tag=exp.tp_rev_prev] remove exp.tp_rev_prev