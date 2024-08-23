# give a unique score
scoreboard players add #pocket_space_id exp.counter_1 1
scoreboard players operation #temp exp.unique_id = #pocket_space_id exp.counter_1

# merge the score with the item description
function expansion:items/transporter/first_transport/merge_room_id

tag @s add exp.unused_transporter