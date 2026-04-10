# >>> generated function callers >>>
# Callers for expansion:blocks/transporter/give_score
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/transporter/initiate_transport (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# give a unique score
scoreboard players add #pocket_space_id exp.counter_1 1
scoreboard players operation #temp exp.unique_id = #pocket_space_id exp.counter_1
execute on passengers if entity @s[type=text_display] run scoreboard players operation @s exp.unique_id = #temp exp.unique_id
execute on passengers if entity @s[type=text_display] run data merge entity @s {text:{color:"aqua",score:{name:"@s",objective:"exp.unique_id"}}}

# merge the score with the item description
function expansion:items/transporter/first_transport/merge_room_id

tag @s add exp.unused_transporter