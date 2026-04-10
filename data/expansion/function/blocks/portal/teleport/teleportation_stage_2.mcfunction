# >>> generated function callers >>>
# Callers for expansion:blocks/portal/teleport/teleportation_stage_2
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/portal/teleport/teleportation_stage_0 (1 caller) [OK same-folder]
# - function expansion:blocks/portal/teleport/teleportation_stage_1 (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Synchronises the rotation of the armor stand with the target portals rotation and load the dimension
data modify entity @s Rotation[0] set from storage expansion:portal portal_out[0].facing
execute store result score #temp exp.dim_test run data get storage expansion:portal portal_out[0].dim

execute store result score #origin exp.value run data get storage expansion:portal portal_out[-1].scale 10000
execute store result score #origin exp.x run data get storage expansion:portal portal_out[-1].Pos.x 100
execute store result score #origin exp.z run data get storage expansion:portal portal_out[-1].Pos.z 100

execute store result score #dest exp.value run data get storage expansion:portal portal_out[0].scale 100
execute store result score #dest exp.x run data get storage expansion:portal portal_out[0].Pos.x 100
execute store result score #dest exp.z run data get storage expansion:portal portal_out[0].Pos.z 100

scoreboard players operation #origin exp.value /= #dest exp.value
scoreboard players operation #dest exp.x *= #origin exp.value
scoreboard players operation #dest exp.z *= #origin exp.value

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #dest exp.x
execute store result entity @s Pos[1] double 0.01 run data get storage expansion:portal portal_out[0].Pos.y 100
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #dest exp.z

execute at @s as @e[type=#expansion:teleportable,tag=exp.teleported,limit=1] run function expansion:blocks/portal/teleport/teleport

kill @s
scoreboard players reset #temp exp.dim_test