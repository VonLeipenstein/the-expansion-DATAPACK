# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.fabricator.new

function expansion:blocks/set_rotation

# summon the model
execute positioned ~ ~1 ~ rotated as @s run function animated_java:fabricator/summon {args: {}}
execute positioned ~ ~1 ~ run ride @n[type=item_display,tag=aj.fabricator.root,distance=..0.1] mount @s

setblock ~ ~ ~ minecraft:barrel{CustomName:{"translate":"exp_blocks_fabricator_gui_name",color:"dark_gray"}} replace

execute positioned ~ ~ ~ run function expansion:blocks/fabricator/gui/gui

