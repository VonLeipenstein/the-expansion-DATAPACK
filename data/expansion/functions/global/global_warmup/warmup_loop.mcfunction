scoreboard players remove @s exp.warmup 1
execute if entity @s[tag=exp.room_generator] in expansion:storage run function expansion:items/transporter/first_transport/generate_room
execute if score @s exp.warmup matches 0 run function expansion:global/global_warmup/warmup_end
