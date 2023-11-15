# give a unique score
scoreboard players add #global exp.room_count 1
scoreboard players operation @s exp.unique_id = #global exp.room_count 

# merge the score with the item description
execute store result storage expansion:transporter_room_id data.room_id int 1 run scoreboard players get @s exp.unique_id
item modify entity @s armor.head expansion:transporter/assign_id

# give player a tag
tag @p[tag=exp.transporting] add exp.room_generator