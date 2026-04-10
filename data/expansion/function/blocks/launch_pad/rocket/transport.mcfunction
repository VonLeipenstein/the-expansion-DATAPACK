# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/rocket/transport
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/rocket/launching (1 caller) [OK same-folder]
# <<< generated function callers <<<

# find the assigned beacon
scoreboard players operation #search exp.pad_id = @s exp.pad_id

tag @s add exp.landing
tag @s remove exp.launching

execute if entity @s[tag=exp.delivering] at @e[type=minecraft:marker,tag=exp.cargo_beacon,predicate=expansion:compare_score/pad_id,limit=1] run tp @s ~ ~300 ~
execute if entity @s[tag=exp.returning] at @e[type=minecraft:item_display,tag=exp.launch_pad,predicate=expansion:compare_score/pad_id,limit=1] run tp @s ~ ~300 ~