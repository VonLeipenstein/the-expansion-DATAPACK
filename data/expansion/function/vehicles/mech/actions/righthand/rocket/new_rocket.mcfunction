tag @s add exp.homing_rocket
tag @s add exp.slowcast
tag @s add exp.ignore

summon interaction ~ ~ ~ {Tags:["exp.homing_rocket_lcdet","exp.new_rocket_lcdet_down"],response:true,height:-0.25f,width:0.5f}
summon interaction ~ ~ ~ {Tags:["exp.homing_rocket_lcdet","exp.new_rocket_lcdet_up"],response:true,height:0.25f,width:0.5f}
ride @e[type=interaction,tag=exp.new_rocket_lcdet_up,limit=1,sort=nearest] mount @s
ride @e[type=interaction,tag=exp.new_rocket_lcdet_down,limit=1,sort=nearest] mount @s
tag @e[type=interaction,tag=exp.new_rocket_lcdet_down,limit=1,sort=nearest] remove exp.new_rocket_lcdet_down
tag @e[type=interaction,tag=exp.new_rocket_lcdet_up,limit=1,sort=nearest] remove exp.new_rocket_lcdet_up

data merge entity @s {item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":123494}},teleport_duration:1,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}

execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^ ~ ~

scoreboard players set @s exp.max_range 100
scoreboard players set @s exp.cooldown 5

scoreboard players operation @s exp.unique_id = #temp exp.unique_id

playsound expansion:mech.missile neutral @a ~ ~ ~ 0.5