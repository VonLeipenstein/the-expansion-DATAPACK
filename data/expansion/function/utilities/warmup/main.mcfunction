# >>> generated function callers >>>
# Callers for expansion:utilities/warmup/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/decrement_scores (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# score timer
scoreboard players remove @s exp.warmup 1

# generate room
execute if entity @s[tag=exp.room_generator] in expansion:storage run function expansion:items/transporter/first_transport/generate_room

# finish
execute if score @s exp.warmup matches 0 run function expansion:utilities/warmup/finish
