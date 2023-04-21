# assign scores to players without a room
scoreboard players reset @s exp.unique_id
execute store result score @s exp.unique_id run data get entity @s ArmorItems[3].tag.room_id
execute unless score @s exp.unique_id matches 1.. run function expansion:items/transporter/first_transport/scores

# cosmetics
execute at @e[type=minecraft:armor_stand,tag=exp.room_origin,limit=1,sort=nearest] run particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.2 50
execute at @e[type=minecraft:armor_stand,tag=exp.room_origin,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 50
playsound entity.lightning_bolt.impact player @a ~ ~ ~

# summon armor stand that will regulate the teleport
execute as @p[tag=exp.transporting] summon minecraft:armor_stand run function expansion:items/transporter/transport


