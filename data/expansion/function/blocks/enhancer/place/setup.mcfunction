# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.enhancer.new

function expansion:blocks/set_rotation

execute positioned ~ ~1 ~ rotated as @s run function animated_java:enhancer/summon {args: {}}
execute positioned ~ ~1 ~ run ride @n[type=item_display,tag=aj.enhancer.root,distance=..0.1] mount @s

setblock ~ ~ ~ minecraft:barrel{CustomName:{translate:"exp_blocks_enhancer_name",color:"dark_gray"}} replace
function expansion:blocks/enhancer/gui/main