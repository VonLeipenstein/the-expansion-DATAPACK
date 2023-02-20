scoreboard players add #global exp.room_count 1
scoreboard players operation @s exp.room_id = #global exp.room_count 
execute store result storage expansion:transporter_room_id data.room_id int 1 run scoreboard players get @s exp.room_id
item modify entity @s armor.head expansion:transporter/assign_id
tag @p[tag=exp.transporting] add exp.room_generator
scoreboard players set @p[tag=exp.transporting] exp.warmup 2