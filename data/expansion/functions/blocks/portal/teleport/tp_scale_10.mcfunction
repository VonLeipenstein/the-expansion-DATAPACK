execute store result entity @s Pos[0] double 1 run data get storage expansion:portal portal_out[0].x
execute store result entity @s Pos[1] double 1 run data get storage expansion:portal portal_out[0].y
execute store result entity @s Pos[2] double 1 run data get storage expansion:portal portal_out[0].z

execute at @s if data storage expansion:portal portal_out[{dim:7}] in expansion:space align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:8}] in expansion:asteroids align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute at @e[tag=exp.teleported,limit=1,sort=nearest] run playsound expansion:portal.transport block @a ~ ~ ~ 1 1 0

kill @s