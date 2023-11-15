# assign a unique score to an unassigned pocket space
execute store result score @s exp.unique_id run data get entity @s ArmorItems[3].tag.room_id

# run functions for the initial transport if the pocket space was unassigned
execute unless score @s exp.unique_id matches 1.. run function expansion:items/transporter/first_transport/scores

# cosmetics
particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.2 50
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 50
playsound entity.lightning_bolt.impact player @a ~ ~ ~

# set a temporary score for the unique ID of this pocket space transporter so it can be merged with the transportation armor stand
scoreboard players operation #temp exp.unique_id = @s exp.unique_id

# initiate the transportation to the pocket space
execute summon minecraft:armor_stand run function expansion:items/transporter/transport


