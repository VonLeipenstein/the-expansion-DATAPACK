# Add the tag to players to prevent them from immediately teleporting back as soon as they arrive in the new portal.
tag @e[distance=..0.6,type=#expansion:sentient,limit=1,sort=nearest,tag=!exp.teleported,tag=!exp.portal_core_rcdet] add exp.teleported

# Summons a carrier armor stand, this armor stand will be teleported to the target first. 
# Then I teleport the player to the carrier in the same tick so the carrier is still in the memory of the game and not lost in the unloaded chunk.
summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["teleport_carrier"]}

# Proceed to the next step of teleportation.
execute as @e[type=minecraft:armor_stand,tag=teleport_carrier,limit=1,sort=nearest] run function expansion:blocks/portal/teleport/teleportation_stage_2