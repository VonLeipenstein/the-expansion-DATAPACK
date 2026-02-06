tag @s remove exp.launch_pad.new

item replace entity @s contents from entity @p[tag=exp.tick_player] weapon.mainhand expansion:portal/count_to_1

# assign a pad ID
scoreboard players add #global exp.pad_id 1
scoreboard players operation @s exp.pad_id = #global exp.pad_id

forceload add ~ ~

function expansion:blocks/set_rotation