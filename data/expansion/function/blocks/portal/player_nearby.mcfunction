# >>> generated function callers >>>
# Callers for expansion:blocks/portal/player_nearby
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/active (1 caller) [OK same-folder]
# <<< generated function callers <<<

# initiate the cooldown score when first going through a portal
execute unless score @s exp.portal_cooldown matches 0.. run scoreboard players set @s exp.portal_cooldown 0

# continue to teleportation if the score is 0
execute if score @s exp.portal_cooldown matches 0 run function expansion:blocks/portal/teleport/teleportation_stage_0