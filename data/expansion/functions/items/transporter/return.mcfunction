data modify entity @s ArmorItems[0].tag.return_dim set from entity @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=nearest] ArmorItems[0].tag.return_dim

execute at @s store result score @s exp.x run data get entity @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=nearest] ArmorItems[0].tag.return_pos[0]
execute at @s store result score @s exp.y run data get entity @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=nearest] ArmorItems[0].tag.return_pos[1]
execute at @s store result score @s exp.z run data get entity @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=nearest] ArmorItems[0].tag.return_pos[2]

kill @e[type=minecraft:armor_stand,tag=exp.room_position,tag=!exp.position_new,limit=1,sort=nearest]
tag @e[type=minecraft:armor_stand,tag=exp.position_new,limit=1,sort=nearest] remove exp.position_new

execute unless data entity @s ArmorItems[0].tag{return_dim:-1} unless data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[0] double 100000 run scoreboard players get @s exp.x
execute unless data entity @s ArmorItems[0].tag{return_dim:-1} unless data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[1] double 1 run scoreboard players get @s exp.y
execute unless data entity @s ArmorItems[0].tag{return_dim:-1} unless data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[2] double 100000 run scoreboard players get @s exp.z

execute if data entity @s ArmorItems[0].tag{return_dim:-1} in expansion:transporter_utility store result entity @s Pos[0] double 800000 run scoreboard players get @s exp.x
execute if data entity @s ArmorItems[0].tag{return_dim:-1} in expansion:transporter_utility store result entity @s Pos[1] double 1 run scoreboard players get @s exp.y
execute if data entity @s ArmorItems[0].tag{return_dim:-1} in expansion:transporter_utility store result entity @s Pos[2] double 800000 run scoreboard players get @s exp.z

execute if data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[0] double 1000000 run scoreboard players get @s exp.x
execute if data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[1] double 1 run scoreboard players get @s exp.y
execute if data entity @s ArmorItems[0].tag{return_dim:7} in expansion:transporter_utility store result entity @s Pos[2] double 1000000 run scoreboard players get @s exp.z

# tp player to origin armor stand
execute if data entity @s ArmorItems[0].tag{return_dim:-2} at @s in minecraft:the_end run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:-1} at @s in minecraft:the_nether run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:0} at @s in minecraft:overworld run tp @p ~.5 ~ ~.5

execute if data entity @s ArmorItems[0].tag{return_dim:1} at @s in expansion:moon run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:2} at @s in expansion:mars run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:3} at @s in expansion:venus run tp @p ~.5 ~ ~.5
#execute if data entity @s ArmorItems[0].tag{return_dim:4} at @s in expansion:mercury run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:5} at @s in expansion:jupiter run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:6} at @s in expansion:europa run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:7} at @s in expansion:space run tp @p ~.5 ~ ~.5
execute if data entity @s ArmorItems[0].tag{return_dim:8} at @s in expansion:asteroids run tp @p ~.5 ~ ~.5

execute at @p[tag=exp.returning] run tp @s ~ ~ ~

playsound entity.lightning_bolt.impact player @a ~ ~ ~

kill @s

