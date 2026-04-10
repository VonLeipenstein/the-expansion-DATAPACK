# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/rocket/touchdown
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/rocket/landing (1 caller) [OK same-folder]
# <<< generated function callers <<<

# kill the beacon upon arrival
scoreboard players operation #search exp.pad_id = @s exp.pad_id
execute if entity @s[tag=exp.delivering] run kill @e[type=minecraft:marker,tag=exp.cargo_beacon,predicate=expansion:compare_score/pad_id,limit=1]

# mount the launch pad upon return
execute if entity @s[tag=exp.returning] run ride @s mount @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,distance=..1,limit=1]

# time the rocket stays when delivering
execute if entity @s[tag=exp.delivering] run scoreboard players set @s exp.timer_2 100

execute if entity @s[tag=exp.delivering] run tag @s add exp.waiting
tag @s remove exp.delivering
tag @s remove exp.returning
tag @s remove exp.landing
