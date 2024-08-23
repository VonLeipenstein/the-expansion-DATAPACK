# score timer
scoreboard players remove @s exp.warmup 1

# generate room
execute if entity @s[tag=exp.room_generator] in expansion:storage run function expansion:items/transporter/first_transport/generate_room

# finish
execute if score @s exp.warmup matches 0 run function expansion:utilities/warmup/finish
