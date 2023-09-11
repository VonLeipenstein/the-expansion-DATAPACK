execute store result entity @s Pos[0] double 0.1 run data get storage expansion:portal portal_out[0].x
execute store result entity @s Pos[1] double 1 run data get storage expansion:portal portal_out[0].y
execute store result entity @s Pos[2] double 0.1 run data get storage expansion:portal portal_out[0].z

execute at @s if data storage expansion:portal portal_out[{dim:0}] in minecraft:overworld align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:1}] in expansion:moon align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:2}] in expansion:mars align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:3}] in expansion:venus align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
#execute at @s if data storage expansion:portal portal_out[{dim:4}] in expansion:mercury align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:5}] in expansion:jupiter align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @s if data storage expansion:portal portal_out[{dim:6}] in expansion:europa align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=exp.teleported,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute at @e[tag=exp.teleported,limit=1,sort=nearest] run playsound expansion:portal.transport block @a ~ ~ ~ 1 1 0

kill @s