# Detects whether a player is close by and initiates the teleportation if so.
execute if entity @e[distance=..0.6,type=#expansion:sentient,limit=1,sort=nearest,tag=!exp.teleported,tag=!exp.inside_portal,tag=!exp.portal_core_rcdet] run function expansion:blocks/portal/teleport/teleportation_stage_0
particle minecraft:dust{color:[0d,0.82d,0.878d],scale:1} ~ ~1.25 ~ 0.5 0.5 0.5 0.2 20