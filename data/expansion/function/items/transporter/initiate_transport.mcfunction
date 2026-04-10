# >>> generated function callers >>>
# Callers for expansion:items/transporter/initiate_transport
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/transporter/transport_block/click_detection/rightclick (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# assign a unique score to an unassigned pocket space
scoreboard players reset #temp exp.unique_id
execute store result score #temp exp.unique_id run data get entity @s item.components."minecraft:custom_data".room_id
execute if score #temp exp.unique_id matches -1 run function expansion:blocks/transporter/give_score

# run functions for the initial transport if the pocket space was unassigned
execute if entity @s[tag=exp.unused_transporter] run tag @p[tag=exp.transporting] add exp.room_generator
tag @s remove exp.unused_transporter

# aesthetics
particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.2 50
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 50
playsound entity.lightning_bolt.impact player @a ~ ~ ~

# initiate the transportation to the pocket space
execute summon minecraft:armor_stand run function expansion:items/transporter/transport