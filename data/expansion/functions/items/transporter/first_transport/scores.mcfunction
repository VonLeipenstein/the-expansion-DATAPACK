# give a unique score
scoreboard players add #pocket_space_id exp.counter_1 1
scoreboard players operation @s exp.unique_id = #pocket_space_id exp.counter_1 

# merge the score with the item description
execute store result storage expansion:transporter_room_id data.room_id int 1 run scoreboard players get @s exp.unique_id
item modify entity @s armor.head expansion:transporter/assign_id

# give player a tag
tag @p[tag=exp.transporting] add exp.room_generator